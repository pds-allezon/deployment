name=$1
vm=$2

echo "Deploying $name on $vm vm!"

ssh st133@st133${vm}.rtb-lab.pl \
  "git clone https://github.com/pds-allezon/${name}.git;" \
  "cd ${name};" \
  "git pull;" \
  "sudo docker build -t ${name} . ;" \
  "sudo docker run -d --network=host --privileged --name=${name} ${name};"
