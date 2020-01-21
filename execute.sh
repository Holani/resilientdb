#inotifywait --format '%w%f' -e modify toInflux_*_.out; do echo $file; done
while true; do
    echo "In execute.sh"
    filename=$(inotifywait --format '%w%f' -e modify toInflux_*_.out)
    echo $filename
    sh InfluxDB.sh $filename
done