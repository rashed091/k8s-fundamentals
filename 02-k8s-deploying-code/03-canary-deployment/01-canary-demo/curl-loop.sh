EXTERNAL_IP=$1

for ((i=1;i<=20;i++))
do
    curl -s "http://$EXTERNAL_IP" | grep "<title>.*</title>"
    sleep .5s
done
