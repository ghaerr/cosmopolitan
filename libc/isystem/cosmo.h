#ifndef COSMOPOLITAN_LIBC_ISYSTEM_COSMO_H_
#define COSMOPOLITAN_LIBC_ISYSTEM_COSMO_H_

#ifdef COSMO
#define COSMO_ALREADY_DEFINED
#else
#define COSMO
#endif

/**
 * @fileoverview Curated Cosmopolitan non-POSIX C Libraries
 *
 * Users of the `cosmocc` toolchain can say, for example:
 *
 *     #include <cosmo.h>
 *
 *     int main(int argc, char *argv[]) {
 *       ShowCrashReports();
 *       kprintf("hello world\n");
 *     }
 *
 * Which will define the best stuff from Cosmopolitan Libc, which
 * includes core runtime services, third party libraries we've curated,
 * as well as internal libraries we made that are good enough to share.
 *
 * @see tool/script/cosmocc
 */

#include "libc/calls/calls.h"
#include "libc/calls/struct/timespec.h"
#include "libc/calls/struct/timeval.h"
#include "libc/dce.h"
#include "libc/fmt/itoa.h"
#include "libc/fmt/leb128.h"
#include "libc/intrin/bsf.h"
#include "libc/intrin/bsr.h"
#include "libc/intrin/kprintf.h"
#include "libc/intrin/likely.h"
#include "libc/intrin/tpenc.h"
#include "libc/intrin/weaken.h"
#include "libc/mem/critbit0.h"
#include "libc/mem/gc.h"
#include "libc/mem/hook.internal.h"
#include "libc/nexgen32e/rdtsc.h"
#include "libc/nexgen32e/stackframe.h"
#include "libc/nexgen32e/x86feature.h"
#include "libc/runtime/morph.h"
#include "libc/runtime/runtime.h"
#include "libc/runtime/stack.h"
#include "libc/runtime/symbols.internal.h"
#include "libc/stdio/append.h"
#include "libc/stdio/rand.h"
#include "libc/str/blake2.h"
#include "libc/str/highwayhash64.h"
#include "libc/str/slice.h"
#include "libc/str/thompike.h"
#include "libc/str/unicode.h"
#include "libc/str/utf16.h"
#include "libc/sysv/errfuns.h"

#ifdef COSMO_ALREADY_DEFINED
#undef COSMO_ALREADY_DEFINED
#else
#undef COSMO
#endif

#endif /* COSMOPOLITAN_LIBC_ISYSTEM_COSMO_H_ */
