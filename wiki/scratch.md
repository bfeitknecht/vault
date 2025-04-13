
# Install `kathara` for Nikol

1. vsos server -> ubuntu, non-local
2. vmware on windows -> ubuntu, non-local


## Script

```bash
#!/usr/bin/env bash

# install docker
sudo apt install docker -y

# add kathara public key to keyring
wget -qO - "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x21805a48e6cbba6b991abe76646193862b759810" | sudo gpg --dearmor -o/usr/share/keyrings/ppa-kathara-archive-keyring.gpg

# add kathara sources
echo "deb [ signed-by=/usr/share/keyrings/ppa-kathara-archive-keyring.gpg ] http://ppa.launchpad.net/katharaframework/kathara/ubuntu jammy main" | sudo tee /etc/apt/sources.list.d/kathara.list
echo "deb-src [ signed-by=/usr/share/keyrings/ppa-kathara-archive-keyring.gpg ] http://ppa.launchpad.net/katharaframework/kathara/ubuntu jammy main" | sudo tee -a /etc/apt/sources.list.d/kathara.list

# install kathara
sudo apt update
sudo apt install kathara -y

sudo apt install tmux -y

echo "finished installation succesfully!"
```


- configure kathara terminal to tmux
- use vscode ssh dev extension to connect to vsos server? -> otherwise only edit with vim etc possible