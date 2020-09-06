# Garantindo as chaves
#KEY_PATH='/vagrant/files'
#mkdir -p /root/.ssh
#cp $KEY_PATH/key /root/.ssh/id_rsa
#cp $KEY_PATH/key.pub /root/.ssh/id_rsa.pub
#cp $KEY_PATH/key.pub /root/.ssh/authorized_keys
#chmod 400 /root/.ssh/id_rsa*
#cat /root/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys



# Garantindo os hosts
HOSTS=$(head -n7 /etc/hosts)
echo -e "$HOSTS" > /etc/hosts
echo '200.100.50.100  balancer.dexter.com.br'  balancer >> /etc/hosts
echo '200.100.50.101  manager01.dexter.com.br'  manager01 >> /etc/hosts
echo '200.100.50.102  manager02.dexter.com.br'  manager02 >> /etc/hosts
echo '200.100.50.103  manager03.dexter.com.br'  manager03  >> /etc/hosts
echo '200.100.50.104  worker01.dexter.com.br'  worker01  >> /etc/hosts
echo '200.100.50.105  worker02.dexter.com.br'  worker02  >> /etc/hosts
echo '200.100.50.106  dtr.dexter.com.br'  dtr  >> /etc/hosts
echo '200.100.50.150  monitoring-server.dexter.com.br'  monitoring-server >> /etc/hosts

# Criando arquivo de SWAP 
fallocate -l 1G /swapfile
chmod 600 /swapfile
mkswap /swapfile
echo -e "/swapfile swap swap defaults 0 0" >> /etc/fstab
swapon -a

