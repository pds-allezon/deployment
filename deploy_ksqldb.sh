name="ksqldb-configuration"
vm="vm107"

echo "Deploying $name on $vm vm!"

ssh st133@st133${vm}.rtb-lab.pl \
  "mkdir code;" \
  "cd code;" \
  "git clone https://github.com/pds-allezon/${name}.git;" \
  "cd ${name};" \
  "git checkout master;" \
  "git pull;" \
  "sudo docker-compose up -d;" \
  "sleep 20s ; sudo docker exec ksqldb-cli ksql --file /query/aggregates-table.sql -- http://localhost:8088;"