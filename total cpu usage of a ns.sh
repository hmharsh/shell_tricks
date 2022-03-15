total=0
IFS='
'

for x in  `kubectl top pods | awk 'NR > 1 {print $3}' | sed -e 's/Mi//g'`; do
  total=`expr $total + $x`;
done

echo $total
