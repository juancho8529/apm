// Please don't use special characters in any of these. '.' for the host name is fine

db_host = "ZILPRL100571T"               // fill in host name for database server running eum_db
db_port = "3306"                    // fill in port number on which the eum_db database is running (default is 3306)
db_root_user = "root"               // fill in username of user with permissions to update schemas for eum_db
db_root_pwd = "VMware2009"         // fill in password for the above user
db_username = "synthetic"          // fill in a user of eum_db who has read/write privileges
db_user_pwd = "VMware2009"         // fill in password for the user specified above
collector_host = "ZILPRL100571T"        // fill in the host where your onprem EUM collector is running
collector_port = "7001"             // fill in the port for your collector (default is 7001)
appkey_prefix = "EUM"               // any prefix you would like added to your app keys
key_store_password = "VMware2009"  // enter a value you would like to use as your keystore password.
                                    // This will be used to encrypt the DB credentials used in our config

// Measurement results and screenshots will be stored here
localFileStoreRootPath = "/donnees/synthetic-server/synthonprem/blobstore"

// The following are used for post-deploy tasks such as installing dashboards on the controller
controller_host = "http://ZILAUL100566T"
controller_port = "8080"
controller_account = "customer1"                  // Account used for running post-deploy tasks
controller_username = "admin"                     // Username for making API calls to controller
prompt_for_password = "true"                     // If true, the password below will be passed to scripts as a param. Otherwise the user will be prompted.
controller_password = "VMware2009"       // Password used for username. It is not stored in any config files.
controller_synth_app = "synthetic"                // Application receiving private agent and shepherd metrics
controller_shepherd_entity = "synthetic-shepherd" // Entity found in the metric tree

// Leave this as is
feeder_server_url = "wss://synthetic-feeder.api.appdynamics.com"
