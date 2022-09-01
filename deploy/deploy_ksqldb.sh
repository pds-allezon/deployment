./deploy.sh "ksqldb-configuration" "vm107" "docker-compose"

ssh st133@st133${vm}.rtb-lab.pl \
  "sleep 20s ; sudo docker exec ksqldb-cli ksql --file /query/aggregates-table.sql -- http://localhost:8088;"