./deploy.sh "load-balancing-configuration" "vm110" "docker"

# Databases
./deploy_kafka.sh
./deploy.sh "redis-configuration" "vm108"  "docker"
./deploy.sh "mongo-configuration" "vm107" "docker-compose"

# Services
./deploy.sh "user-tags" "vm101" "docker"
./deploy.sh "user-profiles" "vm102" "docker"
./deploy.sh "statistics" "vm103" "docker"
