name=$1
vm=$2
deploy_type=$3 # docker or docker-compose
branch=$4


echo "building $name (branch $branch) on $vm with ${deploy_type}..."

ssh st133@st133${vm}.rtb-lab.pl \
  "mkdir code;" \
  "cd code;" \
  "git clone https://github.com/pds-allezon/${name}.git;" \
  "cd ${name};" \
  "git checkout ${branch};" \
  "git pull;"

if
  [ "${deploy_type}" == "docker"] then
  ssh st133@st133${vm}.rtb-lab.pl "sudo docker build -t ${name} . ;"
else then
  ssh st133@st133${vm}.rtb-lab.pl "sudo docker-compose build"
fi
