#!/usr/bin/bash
for INPUT_FILE in $1
do
name=$(echo $INPUT_FILE | cut -f 2 -d '_')
echo $name
IFS=','
val=$(tail -1 $INPUT_FILE)
echo "tp - $val"
curl -i -XPOST 'http://localhost:8086/write?db=mydb' --data-binary $name' throughput='$val
done