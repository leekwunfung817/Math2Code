
# !

if [ -z "$1" ];then echo "From number?"&&read&&FROM=${REPLY};else FROM=$1;fi
if [ -z "$2" ];then echo "To number?"&&read&&TO=${REPLY};else TO=$2;fi
seq $FROM $TO
echo $(seq $FROM $TO  | awk 'START{sum=1}{sum=sum*$1} END{print sum}')
