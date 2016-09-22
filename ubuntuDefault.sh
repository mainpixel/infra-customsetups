    #update repos
    apt-get update

    #install default tools
    apt-get install -y nano vim htop telnet git curl gcc openssh-server net-tools mlocate zip unzip whois

    #enable ssh root login
    sed -i -e 's/^PermitRootLogin/#PermitRootLogin/g' /etc/ssh/sshd_config

    #run setup
    source setups/$1.sh

    #reboot te load configs
    reboot
