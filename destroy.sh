vm=$1

echo "Destroying docker containers in $vm vm"
ssh "st133@st133${vm}.rtb-lab.pl" "sudo docker rm --force \$(sudo docker ps -q)"
echo "Removing code in $vm"
ssh "st133@st133${vm}.rtb-lab.pl" "rm -rf code"
