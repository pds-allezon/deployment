name=$1
vm=$2
deploy_type=$3 # docker or docker-compose

echo "shutting down $name on $vm with ${deploy_type}..."

if
  [ "${deploy_type}" == "docker"] then
  ssh st133@st133${vm}.rtb-lab.pl "sudo docker stop ${name};"
else then
  ssh st133@st133${vm}.rtb-lab.pl "sudo docker-compose down;"
fi
