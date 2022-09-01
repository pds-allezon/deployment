vm=$1

echo "cleaning up $vm..."

echo "Destroying docker containers in $vm"
ssh "st133@st133${vm}.rtb-lab.pl" "sudo docker rm --force \$(sudo docker ps -q) ;"
ssh "st133@st133${vm}.rtb-lab.pl" "sudo docker volume rm \$(sudo docker volume ls -q) ;"

echo "Destroying docker-compose"
ssh "st133@st133${vm}.rtb-lab.pl" "cd code ; sudo docker-compose down ;"

echo "Removing code in $vm"
ssh "st133@st133${vm}.rtb-lab.pl" "rm -rf code"

echo "Removing remaining directories in $vm"
ssh "st133@st133${vm}.rtb-lab.pl" "sudo rm -rf /vol1/zk-data/*; sudo rm -rf /vol2/zk-txn-logs/*; sudo rm -rf /vol3/kafka-data/*;"