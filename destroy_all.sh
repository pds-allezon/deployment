for vm in vm101 vm102 vm103 vm110
do
  echo "Destroying docker containers in $vm vm"
  ssh "st133@st133${vm}.rtb-lab.pl" "sudo docker rm --force \$(sudo docker ps -q)"
done
