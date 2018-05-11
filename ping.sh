#!/bin/bash
for i in {1..254}
do
ping -c 2 -W 1 -i 0.2 172.241.3.$i &> /dev/null
if [ $? -eq 0 ];then
echo "172.241.3.$i is up."
else
echo "172.241.3.$i is donw."
fi
done
