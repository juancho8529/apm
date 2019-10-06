# Create a platform
consolePath=/progiciel/appdynamics/platform/platform-admin
platformName="apm-test-1"
installationDir="/progiciel/appdynamics/platform/apm-test-1"
hostController=ZILPRL100574T


$consolePath/bin/platform-admin.sh create-platform --name $platformName --installation-dir $installationDir

# TÂCHE MANUEL
# Ajouter le key de la console vers le host du contrôleur

# Ajouter l'host CONTROLLER
$consolePath/bin/platform-admin.sh add-hosts --hosts $hostController --credential cred-$HOSTNAME

# Install the controller
$consolePath/bin/platform-admin.sh submit-job --service controller --job install \
    --args controllerPrimaryHost=$hostController \
    controllerAdminUsername=admin \
    controllerAdminPassword=VMware2009 \
    controllerRootUserPassword=VMware2009 \
    mysqlRootPassword=VMware2009
