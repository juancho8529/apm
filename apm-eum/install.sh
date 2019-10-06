$eumHome=/progiciel/appdynamics/eum/eum-processor
$licencePath=""

yum install libaio -y
yum install numactl -y

cd "$( dirname "${BASH_SOURCE[0]}" )"

curl $eumUrl > files/euem-64bit-linux.sh
/progiciel/apm/euem-64bit-linux.sh -q -varfile response.varfile

# TODO: Configure the eum server as a linux service

systemctl start apm-eum

cd $eumHome
./bin/provision-license $licencePath
