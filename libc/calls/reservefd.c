/*-*- mode:c;indent-tabs-mode:nil;c-basic-offset:2;tab-width:8;coding:utf-8 -*-│
│vi: set net ft=c ts=2 sts=2 sw=2 fenc=utf-8                                :vi│
╞══════════════════════════════════════════════════════════════════════════════╡
│ Copyright 2020 Justine Alexandra Roberts Tunney                              │
│                                                                              │
│ Permission to use, copy, modify, and/or distribute this software for         │
│ any purpose with or without fee is hereby granted, provided that the         │
│ above copyright notice and this permission notice appear in all copies.      │
│                                                                              │
│ THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL                │
│ WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED                │
│ WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE             │
│ AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL         │
│ DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR        │
│ PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER               │
│ TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR             │
│ PERFORMANCE OF THIS SOFTWARE.                                                │
╚─────────────────────────────────────────────────────────────────────────────*/
#include "libc/assert.h"
#include "libc/calls/calls.h"
#include "libc/calls/internal.h"
#include "libc/calls/state.internal.h"
#include "libc/calls/struct/sigset.h"
#include "libc/dce.h"
#include "libc/intrin/cmpxchg.h"
#include "libc/intrin/extend.internal.h"
#include "libc/intrin/strace.internal.h"
#include "libc/macros.internal.h"
#include "libc/mem/mem.h"
#include "libc/runtime/directmap.internal.h"
#include "libc/runtime/memtrack.internal.h"
#include "libc/runtime/runtime.h"
#include "libc/str/str.h"
#include "libc/sysv/consts/map.h"
#include "libc/sysv/consts/prot.h"
#include "libc/sysv/consts/sig.h"
#include "libc/sysv/errfuns.h"

static volatile size_t mapsize;

/**
 * Grows file descriptor array memory if needed.
 *
 * @see libc/runtime/memtrack64.txt
 * @see libc/runtime/memtrack32.txt
 * @asyncsignalsafe
 */
int __ensurefds_unlocked(int fd) {
  bool relocate;
  if (fd < g_fds.n) return fd;
  g_fds.n = fd + 1;
  g_fds.e = _extend(g_fds.p, g_fds.n * sizeof(*g_fds.p), g_fds.e, MAP_PRIVATE,
                    kMemtrackFdsStart + kMemtrackFdsSize);
  return fd;
}

/**
 * Grows file descriptor array memory if needed.
 * @asyncsignalsafe
 * @threadsafe
 */
int __ensurefds(int fd) {
  __fds_lock();
  fd = __ensurefds_unlocked(fd);
  __fds_unlock();
  return fd;
}

/**
 * Finds open file descriptor slot.
 * @asyncsignalsafe
 */
int __reservefd_unlocked(int start) {
  int fd;
  for (;;) {
    for (fd = MAX(start, g_fds.f); fd < g_fds.n; ++fd) {
      if (!g_fds.p[fd].kind) {
        break;
      }
    }
    fd = __ensurefds_unlocked(fd);
    bzero(g_fds.p + fd, sizeof(*g_fds.p));
    if (_cmpxchg(&g_fds.p[fd].kind, kFdEmpty, kFdReserved)) {
      _cmpxchg(&g_fds.f, fd, fd + 1);
      return fd;
    }
  }
}

/**
 * Finds open file descriptor slot.
 * @asyncsignalsafe
 * @threadsafe
 */
int __reservefd(int start) {
  int fd;
  __fds_lock();
  fd = __reservefd_unlocked(start);
  __fds_unlock();
  return fd;
}
