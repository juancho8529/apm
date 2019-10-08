# Create a platform
consolePath=/progiciel/appdynamics/platform/platform-admin
platformName="apm"
installationDir="/progiciel/appdynamics/platform/$platformName"
hostController=ZILAUL100566T


$consolePath/bin/platform-admin.sh create-platform --name $platformName --installation-dir $installationDir

# TÂCHE MANUEL
# Ajouter le key de la console vers l'host du contrôleur
$consolePath/bin/platform-admin.sh add-credential --credential-name cred-$HOSTNAME --type ssh --user-name root --ssh-key-file /root/.ssh/id_rsa



# Ajouter l'host CONTROLLER
$consolePath/bin/platform-admin.sh add-hosts --hosts $hostController --credential cred-$HOSTNAME

# Install the controller
$consolePath/bin/platform-admin.sh submit-job --service controller --job install \
    --args controllerPrimaryHost=$hostController \
    controllerAdminUsername=admin \
    controllerAdminPassword=VMware2009 \
    controllerRootUserPassword=VMware2009 \
    mysqlRootPassword=VMware2009
