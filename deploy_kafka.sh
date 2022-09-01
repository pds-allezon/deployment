name="kafka-configuration"
vm="vm109"

echo "Deploying $name on $vm vm!"

ssh st133@st133${vm}.rtb-lab.pl \
  "sudo mkdir -p /vol1/zk-data; sudo mkdir -p /vol2/zk-txn-logs; sudo mkdir -p /vol3/kafka-data;" \
  "sudo chown -R 1000:1000 /vol1/zk-data; sudo chown -R 1000:1000 /vol2/zk-txn-logs; sudo chown -R 1000:1000 /vol3/kafka-data;" \
  "mkdir code;" \
  "cd code;" \
  "git clone https://github.com/pds-allezon/${name}.git;" \
  "cd ${name};" \
  "git checkout master;" \
  "git pull;" \
  "sudo docker-compose up -d;" \
