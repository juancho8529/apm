#################Prepare the environment####################
    /etc/sysctl.conf
    vm.max_map_count=262144

file descriptor limit

appdynamics     soft    nofile          96000
appdynamics     hard    nofile          96000

mkdir -p /progiciel/appdynamics/platform/apm-test-1
mkdir -p /donnees/appdynamics/eventservices
##############################################################

# Create a platform
consolePath=/progiciel/appdynamics/platform/platform-admin
platformName="apm-test-1"
dataDir=/donnees/appdynamics/events-service
hostController=ZILPRL100568T

$consolePath/bin/platform-admin.sh install-events-service --profile dev \
    --hosts $hostController \
    --data-dir $dataDir \
    --platform-name $platformName
