# Bitsee for BitCore as Docker Solution
[![docker pulls](https://img.shields.io/docker/pulls/dalijolijo/btx-bitsee.svg?style=flat)](https://hub.docker.com/r/dalijolijo/btx-bitsee/)

## Deploy as a docker container

Support for the following distribution versions:
* CentOS 7.4 (x86_64-centos-7)
* Fedora 26 (x86_64-fedora-26)
* Fedora 27 (x86_64-fedora-27)
* Fedora 28 (x86_64-fedora-28)
* Debian 7 (x86_64-debian-wheezy)
* Debian 8 (x86_64-debian-jessie)
* Debian 9 (x86_64-debian-stretch)
* Debian 10 (x86_64-debian-buster)
* Ubuntu 14.04 LTS (x86_64-ubuntu-trusty)
* Ubuntu 16.04 LTS (x86_64-ubuntu-xenial)
* Ubuntu 17.10 (x86_64-ubuntu-artful)
* Ubuntu 18.04 LTS (x86_64-ubuntu-bionic)

### Download and execute the docker-ce installation script

Download and execute the automated docker-ce installation script - maintained by the Docker project.

```sh
sudo curl -sSL https://get.docker.com | sh
```

### Download and execute the script
Login as root, then do:

```sh
sudo bash -c "$(curl -fsSL https://github.com/dalijolijo/bitsee/raw/master/docker/btx-bitsee-docker.sh)"
```

## Setup bitsee
Jump into the running docker container and execute the setup script:
```sh
docker exec -it btx-bitsee bash
cd /root/bitsee
source ./setup.sh
```

## Scan the bitcore blockchain
Check the last loaded block with:
```sh
bitcore-cli getblockcount
```

#### Scan a range of blocks (example)
```sh
cd /root/bitsee
source bitsee-env.sh
bundle exec rails utils:scan_blocks BTX_USERNAME=bitcore BLOCK_BEGIN=174329 BLOCK_END=174331
```
Hint: BLOCK_END can also be 0, in which case it will use the current block count. 

#### Scan a specific transaction (example)
```sh
cd /root/bitsee
source bitsee-env.sh
bundle exec rails utils:scan_tx TX=f3b7972d3089b6957d85e0f376c22c82bce4bb0167508fa86f028b8069d1eb9e
```

## Results
Now view http://localhost:3000/ for the results. 

**Hint:** If the Bitsee docker container is running on a server you must establish a tunnel for port 3000 to use localhost.
![Screenshot](/docker/putty-tunneling.PNG?raw=true "Putty Tunneling")
