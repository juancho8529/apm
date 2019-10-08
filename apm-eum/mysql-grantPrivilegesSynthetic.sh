$eumBase=/progiciel/appdynamics/eum

syntheticMachine=ZILPRL100570T
mysqlCommand="GRANT ALL PRIVILEGES ON eum_db.* TO 'root'@'$syntheticMachine';"
$eumBase/mysql/bin/mysql --defaults-extra-file=/progiciel/apm/mysql-access.conf --socket mysql/mysql.sock -e "$mysqlCommand"

mysqlCommand="GRANT ALL PRIVILEGES ON eum_db.* TO 'eum_user'@'$syntheticMachine';"
$eumBase/mysql/bin/mysql --defaults-extra-file=/progiciel/apm/mysql-access.conf --socket mysql/mysql.sock -e "$mysqlCommand"

mysqlCommand="SET PASSWORD FOR 'root'@'$syntheticMachine' = PASSWORD('VMware2009');"
$eumBase/mysql/bin/mysql --defaults-extra-file=/progiciel/apm/mysql-access.conf --socket mysql/mysql.sock -e "$mysqlCommand"

mysqlCommand="GRANT ALL PRIVILEGES ON eum_db.* TO 'synthetic'@'$syntheticMachine';"
$eumBase/mysql/bin/mysql --defaults-extra-file=/progiciel/apm/mysql-access.conf --socket mysql/mysql.sock -e "$mysqlCommand"

mysqlCommand="SET PASSWORD FOR 'synthetic'@'$syntheticMachine' = PASSWORD('VMware2009');"
$eumBase/mysql/bin/mysql --defaults-extra-file=/progiciel/apm/mysql-access.conf --socket mysql/mysql.sock -e "$mysqlCommand"
