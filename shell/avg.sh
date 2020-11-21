echo "You input:$@"
ROW_COUNT=$(echo "$@" | tr ' ' "\n" | wc -l)
echo "$ROW_COUNT parameters"
SUM=$(echo "$@" | tr ' ' "\n" | awk 'START{sum=0}{sum=sum+$1} END{print sum}')
echo "total: $SUM"
AVG=$(($SUM/$ROW_COUNT))
echo "average:$AVG"
