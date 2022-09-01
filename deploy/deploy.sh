name=$1
vm=$2
deploy_type=$3 # docker or docker-compose

echo "deploying $name on $vm with ${deploy_type}..."

if
  [ "${deploy_type}" == "docker"] then
  ssh st133@st133${vm}.rtb-lab.pl "sudo docker run -d --network=host --privileged --name=${name} ${name};"
else then
  ssh st133@st133${vm}.rtb-lab.pl "sudo docker-compose up -d"
fi
