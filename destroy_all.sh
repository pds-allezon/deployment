for vm in vm101 vm102 vm103 vm104 vm105 vm106 vm107 vm108 vm109 vm110
do
  echo "Destroying docker containers in $vm vm"
  ssh "st133@st133${vm}.rtb-lab.pl" "sudo docker rm --force \$(sudo docker ps -q)"
done
