MZqFpD='
   �        @           JT                      �  �@� ����H��1ҽ  ��!  ��>� p1Ɏ���׉���  ^��r � PP1�� �����   �ٹ �P ��1�1���@t� �1�0��( �H Ou��P&  SR��r,�π�?���������1��ƾ��������������X��[�Z��1��r���PQ�������1۰��YXr�ƃ� ����:v���:6 v0�A�P1��X�ŉ����t	� �����W��%���_�����%������� � ���tQV���%� ^Y��É���tRV1ɱʬ^��Z��BIy��                                                                                                              U�'
#'"
o="$(command -v "$0")"
type ape >/dev/null 2>&1 && exec ape "$o" "$@"
t="${TMPDIR:-/tmp}/ape"
[ -x "$t" ] || {
dd if="$o" of="$t.$$" skip="      70" count="     128" bs=64 2>/dev/null
[ -d /Applications ] && dd if="$t.$$" of="$t.$$" skip=6 count=10 bs=64 conv=notrunc 2>/dev/null
chmod 755 "$t.$$"
mv -f "$t.$$" "$t"
}
exec "$t" "$o" "$@"
t="${TMPDIR:-/tmp}/$0"
[ -e "$t" ] || {
mkdir -p "${t%/*}" 2>/dev/null
cp -f "$o" "$t.$$" &&
mv -f "$t.$$" "$t" || exit 120
o="$t"
exec 7<> "$o" || exit 121
printf '\177ELF\2\1\1\011\0\0\0\0\0\0\0\0\2\0\076\0\1\0\0\0\002\042\100\000\000\000\000\000\220\012\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0\0\0\0\100\0\070\0\004\000\0\0\000\000\000\000' >&7
exec 7<&-
[ -d /Applications ] && dd if="$o" of="$o" bs=8 skip="     415" count="      87" conv=notrunc 2>/dev/null
}
o="$t"
exec "$o" "$@"
R=$?
if [ "$(uname -m)" != x86_64 ]; then
Q="$(command -v qemu-x86_64)" &&
exec "$Q" "$o" "$@"
fi
exit $R
error:  
 e820 oldcpu   C8 �%                ��   � ��   � ��   �� ��   �� ��   �� ��   �� ��   �OQ�      P    <  j ��@ ����"�f�Z   �����  � � �_ ��p�X�ĀuLf�fXf��f�    f1�fPf�f�fXf9�t/f	�fPf�f�   �f��fG�f9�|f���f�    f!�f9�u1�ÿ�%���Q ��f1�f1�f� �  f�   f�PAMS�r#f9�u��t��r�Eu��f��t�� r�ÿ�%�9��1���H�ؿ �&�P�P&� ��&�=�X�X&�u@� �, ���d�% ���d�% �`P� ���d� X�`�	 ���d� ��d�u���d�t����� y��f� P� f� X� f� @� f� 0� f�  � f� � � f�   1�f�f   ����f� � "���" �f�  "�f��  �2f  0�% �f  �f���"��(( j0X�؎Ў�����   E1�E1�E1�E1�1�1�UH��    ޺    �!  h  �,$H�b@     ��H�     p  H��   �% �     ��  jYj H��H��&  H�E j j j Ujj h�/@ j Uj1�1�1�1�1�E1�E1�E1�E1��:  �w9wuE1��>���G9�t�H�Hk�H�DH�HcWL�H��Hk�H�LHLI9�s�I��   H�L���AWE1�AVAUATI��UH�oSI��H��RM�qM��tUD���   L��Hk�H�H�PH���H�PH���  HPH�� ���H�� ���H)�tA�yuH�HA��H�PI��뢺   A�   E9�vVI��D�ȉ�J�|���H9|sJ�4�   I��H�~H����u����Hk�H�t�   A��H��H�DH����H�{   �   HCCD�C�C    I�     ���H�HcCI9�sWL�m H�EL�H�$I��    H9$v2K�T= �   L��H���  H��t� u
L��H��H�I��   ��I��H���X[]A\A]A^A_�@                 @              @       @                    @       @@      `              �             Q�td    P           p   p                                  p      p@     p+      0       0                       OpenBSD              NetBSD  @+�5PE  d� kd\        � #            �$        @                                             �                                    �5  (                                                                                   �5  x                           .text    0      0                 `  p.data    �   @      @              �  �����           �            H   __PAGEZERO                                                         �   __TEXT            @      @               @                   __text          __TEXT           @      0                                      �   __DATA           @@      �       @                          __data          __DATA           @@             @                             __bss           __DATA           P@      �                                          ������������   �      *             @                                                                                                                    "@                                     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     �UI�Ӊ�A�'   SH� ����  L��D��H��%�  L��A��t9A�u@��uE1��)����H��t�H��I�I�1��� A��	H��/H!�H��L��[]�AWI�ǐ*  AVE1�AUI��ATUSH��H�4$H�T$����I��p+  ��   A���t=Q�td��   A�G����H�E1�H���H��M9g(vfM9g vH�\$I_L�I9�LB��L��������   H��H��1��I�WH�4$�   L��L�I��   �����H� ����  H!�H	�H��I��8�S���M9u M��MCM M�M H��[]A\A]A^A_�1���f.�     f.�     @ ELF	         >           @                   @ 8                                      �      �      @                                                     @       Q�td                                                                             0       0                       OpenBSD              NetBSD �@+�5                                                ����           H            H   __PAGEZERO                                                         �   __TEXT                                 �                   __text          __TEXT                 �                                      �   __DATA                                                       __bss           __DATA                                                              ��l�䞲?���f��,�   �      *                                                                                                                                                                                                 H���m  �r�H���S�D$A��H��/  ��t�� t ���   �    A��   D��A�	   �A��  1�D	�AQAQ��AYAY[�1Ҁ< tH����1���t���   u�   	��   ��/  �1�D�E��tH����H9�r4H��H)�H)�H�H9�s �D�J�A��w�� D�A9�uH����A�D���AUI��H�5�  ATI��U��SHc�H�� �a���L����W���H�5�  ���I���L����?�����tH�5�  ���-�������H�L$Hc��
�D$-H�L$1�A�
   H��1�H��I��H���0�T9�H��H��H��	w��9 1�H9�s�@�<1@�<H���1H����H�t$������H�51	  ��������t���   �    �   D���<   1�	ȿ   �<.  1�D�E��tH����L�*  I�T1H�H��   H��)  ��   H��t�|2/t�D2 /H��L��)  1�L�2I9�tE�E�\
 H����H5�)  H��1�H�H9�v��T H������)  ��t���    �   �!   E���   1�	�H�=�)  �   �w-  ��A��D���AVH�L)  1�AUH�I)  ATUH��SH9�t�4H����/u��1�H9�t%�4H��\u�[H��1�]A\A]�)   A^�����1�H���������uOL�%�(  L�-�(  1�A�M�4��t<:tH���  wA�D H����H��H��������uA�>:u	M�d뿰[]A\A]A^�AWAVAUATUSH��H�� H��t�i�H��t
H���    �1��@����H�L�sHc�H�t�H�t$H��H�2H��H�t$H��u�H��tH�qH��t	H�58,  �L�=���L�=(,  H��t�L�iL�a�D$M���  ��u.H�: �   t#H�
H��tH���  tH����   ��@   ��~?H�{1�L��  �A�4@8�u	��t
H����@8�uUH��L�cL�s H��H���  t;H�5�  ���������t���   �    �   D���<   1�	ȿ   A��H��L�cH�CH�CL��I���  1҃�L�=  ����L���RA	պ   D���+  H�	  ���[  =   ��  M����uA�?����uP�   �   �A�?ELFu;1�����1ҍD@	Ћ|$��*  �;  ���;   L��D�L��H�T$��*  L��M��   I�printf 'I9���  L9��  H��1�L�P��M9�ve�H�H��'tV��\uE@�xD�_�A��w7�H@�׃�0�y�@��vH�H��x�T�ЍOЀ�vL���H�H�T��A�7H��H���H�ȃ�?�<  A�?ELF�/  fA�}H��  �+  fA�}>H��  �  A�}H��  �  A�}H�  ��  E�u8Mk�8MU I��   w%���    �   H�D$    E�M׃��D$�H��  �  ��t%I��I��8M����   A�Gȃ�u�H��  �  I��I�O�I�w�H��H	�H	�IGЩ�  tH��  �X  A�G̉������t���tH�|$��H�L$H9�s8UH)�HϋL$ E1�A����T$$����Z�T$H��yH��  ��L����b���I�w�H���A���M�O�I��U�   D�D$�o���H��XH������H�_  �H�|$ H�]  ��   ��t���    �   �   E���   1��|$	��%(  ��tH�(      �H�|$H�t$�%   ��'  ��uڃ� �    I�uH��L��'  HD���1�E1�E1�E1�1�E1�E1�E1�E1�H��1�V1�1��H���+���H��  1������H�L$H�=X  H�H��t)1�@�4@��u�<=uH�D�@:4uH����H����@�-@#  H��uH�(  L�%=#  H�>#  1�A�< H�PtH����H�#  H��uH��  �q���H��   w�H�=�  ������uNH�5�"  H�=�"  H��  �\�����u�H��  �L�����u�H��  �<�����u�H�=�  �L�����t���t��A�    �   �   DD���   E1�L�%�"  1�D	�L���A�׉D$���/���H�[  �����=9  ELFH�O  �P�������ape error:   failed errno= /bin:/usr/local/bin:/usr/bin - usage: ape   PROG [ARGV1,ARGV2,...]
       ape - PROG [ARGV0,ARGV1,...]
αcτµαlly pδrταblε εxεcµταblε loader v1.o
copyright 2022 justine alexandra roberts tunney
https://justine.lol/ape.html
 PATH not found (maybe chmod +x) .com .exe .com.dbg open read too small ELF e_type != ET_EXEC ELF e_machine != EM_NEXGEN32E ELF e_ident[EI_CLASS] != ELFCLASS64 ELF e_ident[EI_DATA] != ELFDATA2LSB ELF phdrs need to be in first page not a real executable APE phdrs must be 4096-aligned and 4096-padded bss mmap() image mmap() ELF needs PT_LOAD phdr w/ PF_X could not find printf elf in first page f.�     f.�     f���H��HE�t� ��-  1��W@ ��S�$H�t$H�T�H�%�5  H���1��d@ � @@ �x@@ H)����H�1����H���H�H����-  tj j H����  UH�� P@ �H6@ �%HQ@ �%PQ@ XQ@ SV���u'I�? u��1�I�<��  u�@�I�<� g�Iu�H�����"@ ����"+4=j �j6@ �4j-�j6@ �+j-��6@ �"j[�	7@ �j;��6@ �jA�I6@ �j5��6@ X�.@ H�W� P@ ��Q@ s 1�1�1Ҭ�Ѐ�H��H	Ӏ���u�H�H��ؐ_^[� P@ ���u��-  H��WV�o   ^_��P�   ��/@ �   �  1�Z�UH��A��I��I��I��������H6@ �H6@ H9�tPQ�   �YXH�����   ������	  D��L��L��L���US��T@ H�CRH�C�,  j�C�t#jXj��C�C@�Ch��  H�C(H�CPH�Cx�>�t:H�� H�-  jXj�Y�C�C@�Chj���H�C(j�Y��H�CPj�Y��H�� H�Cx��,  �C    ���CD�ClX[]��UH��AWAVAUATWVSH��H�e+  1H�� H	�H��2  �o  �E�  �R+  eL�,%`   M�m M�mx�m��    H��t�и    H��t�к   eH�%`   H�-�2  ��  H��uq��	~l��*  ���  ��W@ 1ۉ�2  �  ���  �  L�=�  L�5	  H���/@ ��  H��H��I��H��A�����/@ H��L��A��H��u�H��+  XQ@ H��+     �g*  t�   eH�%`   ��  
rH�     p  H���   A�@   ��/@ H���I���|$ L��  ��H�D$(    I�� �  L�d$(E1�E1�H�Z+  H���"   H�|$ �'  �   D�0�uL�M�A�   H��L���%  L��H��A�   L��H��*  H��I��$   ��T�L��P��  D�p�@&   H�@   H��*     ��   1�A��Hc�I$���t��\u� /�����r  M��$ �  A��  ��  I��$� L��H��I���Z  �   L����#@ �  M��L��D��H��   M��$��  1�H��  �-  H�VH;VsH�JH�N�H��u��H�H�BH����u1��(������uH�J�RH���t�- �  ��
�� $  �F�AWI��AVAUI��ATE1�UH����W@ H�D SH�>H�nH�FD�������~ t!�F��t�� �Ã�	���tPD���g�����1��>���M��tH�FI��H)�L9�IG��D  M���1  I��Ic�I9�LG�K�D�     �  A��Ic�L9�sH�FH;Fr1�I�D���~����   ��u�� ��   ��	��   ��"t	��\��   E1҃~\uD�������A����E1Ƀ~"u
����A����E��uA��A���t��\   �s�����A��~�\   �a���A����E��t�"   �L���A��E���]������   A�� E�QA9�|�"   ��������D�ȹ   ��������$�������D����������1�������}���[D��]A\A]A^A_�AUI��E1�ATI��UH�j�SfA�: ��   A�CHc�L9�sK�4�Lc�1�E1�E1�H� H�XA�<��ti������uH�X�� �  A�D��
�� $  �E��u��=t�G���w�� �A��~  L��M�IL9�wH��I���B�D�H��u�L����L��H�J�tH��I�H��G���[D��]A\A]�Hc�Hk�(H�*  � ��t��t��uHc�H�����   Hc�1ɸ    ��P�E  ��  Z�ATHc�I��H��UH��SHk�(H��0H�*  H�T$H�|�/  H�i*  A��H�LRL��PH�� L�L$<��  H��0��t�D$�`�  ��mt=�   t��uE��  �{  �>�    H��t�5-&  �   ���  �z  ��x  ��%  ���   ��  �  H��0[]A\�AWAVUH��SH��H��teH�~ u	H��H����H�^E1�E1�H�H��t2H�s�H�L$�|$�����H���t>H�L$IƋ|$H���tH�H;rI��H��L9�u�L���H��1�1�[]A^A_����H��[]A^A_�I��H���t�   1�H���H�r�E1�L���UH��H�� �Q  ���U��SP�    H��t1��лH6@ H��H6@ vH������c  ����  H��H��H��H��L��L��1���H������   L��(  Hc�L9�s2Hk�(H�(  �9u"H�4$H�yH��H���H�T$�   �    ���d��#  ��u��  �RL9�r��  �  �A��H�4$H�T$tHk�(�   H��H=2(  �    ��   H���=����
�  �  H��Ã?u�   P�  �T  Z�E1�E1�Lc�M9�v:1�J�H9Nv"H�WA�Ӄ�� u���H�D�ڊ�H����I��H��I����L��É�1���v �ϋM�/@ ������?��H����u��H	����"  t]ATSH��(��  H�� ;-*  u?1�D�$��W@ H�� H��H���/@ ��  H��D����  H�� H��u���)      X[A\�Ð�P�"  �uH�
#  ��tH�� @���  H�� j j �$��S��"  ��!  tH�� �  H�� ���   ���O   �H���[É���u�1�Hc�Hk�H���/@ ���/@ f��t9�uHcF���/@ ������H�@ B @ �%x!  �=5)   t=V�0   R�Z!  ��qtdH� �eH� ��t�5)  ��    H���  H��<Z^ø�W@ �%�  =�  t!I��UH��]H=���s��ؑ�����j�XË�!  ��H��4�H��(�H����%�  f=�t�I��r��A��A��   ����D	��݋�   �9����j�XË-!  �(����j�XËt!  �����j�XÐMETAL=1 success
 ��  �������������������������  @                       ���~ �    =    =   5 �   C �   � �   : �   P }   R =   ��   �]   ��   �e    =   � �   4 E   � �    =   ��   ��   ��   z �   ��   �M   &�    �   �M   ��   ��   ! =   � �   @ ]   A =   6 �   ��   ��    �   �   ��   � =    =   2 �    �   ��   ��    =   ��   ��   � �   �m   ��   3 e   ��   G 5    =   y !    =   D �   ; ]   ��    =   " =   '=   u'�   '�   &'�   U'u   S'�   m'�   k'�   l'�     kernel32.dll 
Cosmopolitan
Copyright 2020 Justine Alexandra Roberts Tunney

Permission to use, copy, modify, and/or distribute this software for
any purpose with or without fee is hereby granted, provided that the
above copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL
WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE
AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL
DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR
PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
PERFORMANCE OF THIS SOFTWARE.     CreateFileMappingW    ExitProcess   FreeEnvironmentStringsW   GetConsoleMode    GetCurrentProcessId   GetEnvironmentStringsW    GetLastError    GetStdHandle    MapViewOfFileEx   SetConsoleCP    SetConsoleMode    SetConsoleOutputCP    VirtualProtect    WriteFile �5          �1   @                      �4      �4      �4      �4      �4      5       5      05      @5      R5      b5      t5      �5      �5              �#01	5=6EA$8(?23NB- <��bc	gohzqsjZ$de&'_ n�'��#01	5=6EA$8(?23NBV <����#01	5=6EA$8(?23NB[ <�����N�N�N�N�N�N����N�N�NW�N�N�N�N�N��Nm�N����#01	5=6EA$8(?23NB- <����������f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     f.�     @ �4      �4      �4      �4      �4      5       5      05      @5      R5      b5      t5      �5      �5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      