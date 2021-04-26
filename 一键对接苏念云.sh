#!/data/data/com.termux/files/usr/bin/sh
skip=50
set -e

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

case $TMPDIR in
  / | /*/) ;;
  /*) TMPDIR=$TMPDIR/;;
  *) TMPDIR=/data/data/com.termux/files/usr/tmp/;;
esac
if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -d "${TMPDIR}gztmpXXXXXXXXX"`
else
  gztmpdir=${TMPDIR}gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `printf 'X\n' | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  printf >&2 '%s\n' "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
�r��`服务器一键部署soga后端对接我的机场主体.sh �UKO�@��W��Z�8	�> �R��^����I�8���JO�(EB�HՂhy�B-$��<�#����Ω�k;�p��䵾ٙ��{iy���]��һ�z��λ?{����r����w���p7�I9�ϼ�����g'�e�W6x��y筴��\���>y�[���<�8�We���L� �p(�n��[��F:�}o����q�w�^^��i�_�ƫ~w��Y���ZW�ˋn}����7k|��ºw��~8vk����Dw�����QL*9�Mʠa��0b�e�� �[��C
�_���l2$1\@���@g�e"0E1���C3��X8�I�䘲f$��(C�ПA� ulD��ZD�c�1��,&hV���Y����4�=��_R�g̦��8��r���q("�e2d��F���*&�Rqj�`� El$+�������CY1 R !R� +�H)g,HtQhRDD`� ��2�2bѦ
�@v�:uLM9���k��L&�D���*)ɑ��ѱ�p*�H�&FR㣩1FV	��T�HIa�A ��*x����)��6B�_H�#mFŢ¤e,t����TݤJZ�Ӥ��X��IY���-��sO"�`J��٘��T�+���v5i����N�Z8*���[�RS��~c�o���
����F4v�h�o���^o�.��,���_ix?.����z�+b��j~���Y���~ǰr��� �V�  