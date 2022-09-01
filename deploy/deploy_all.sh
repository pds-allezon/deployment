./deploy.sh "load-balancing-configuration" "vm110" "docker"

# Databases
./deploy_kafka
./deploy.sh "redis-configuration" "vm108"  "docker"
./deploy_ksqldb.sh

# Services
./deploy.sh "user-tags" "vm101" "docker"
./deploy.sh "user-profiles" "vm102" "docker"
./deploy.sh "statistics" "vm103" "docker"
