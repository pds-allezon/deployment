./build.sh "load-balancing-configuration" "vm110" "docker" "master"

# Databases
./build.sh "kafka-configuration" "vm109" "docker-compose" "master"
./build.sh "redis-configuration" "vm108" "docker" "master"
./build.sh "ksqldb-configuration" "vm107" "docker-compose" "master"

# Services
./build.sh "user-tags" "vm101" "docker" "master"
./build.sh "user-profiles" "vm102" "docker" "master"
./build.sh "statistics" "vm103" "docker" "master"