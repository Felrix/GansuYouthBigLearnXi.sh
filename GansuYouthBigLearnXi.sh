#!/bin/bash
college=""#学院
name=""#姓名

data1="Level1options=直属高校团委"
data2="Level2options=兰州理工大学"
data3="Level3options=$college"
data4="Level4options="
data5="name=$name"

while true;do
res=$(curl -v -X POST -G --data-urlencode $data1 --data-urlencode $data2 --data-urlencode $data3 --data-urlencode $data4 --data-urlencode $data5 "http://gsqndxx.gsjiahua.com.cn/inserts")
if [ "$res" == "true" ] ; then
        break
fi
done
