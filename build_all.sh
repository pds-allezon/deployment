./build.sh "load-balancing-configuration" "vm110" "docker" "master"

# Databases
./build.sh "kafka-configuration" "vm109" "docker-compose" "master"
./build.sh "redis-configuration" "vm108" "docker" "master"
./build.sh "ksqldb-configuration" "vm107" "docker-compose" "master"

# Services
./build_user_tags.sh
./build_user_profiles.sh
./build_statistics.sh