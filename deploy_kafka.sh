name="kafka-configuration"
vm="vm109"

echo "Deploying $name on $vm vm!"

ssh st133@st133${vm}.rtb-lab.pl \
  "git clone https://github.com/pds-allezon/${name}.git;" \
  "cd ${name};" \
  "git pull;" \
  "sudo docker-compose up -d;"
