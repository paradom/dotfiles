## setup

### Create ssh key for github
```
mkdir -p ~/.ssh
chmod 700 $!
ssh-keygen -t rsa -b 4096 -N "" -f ~/.ssh/id_github
chmod 600 $!

touch ~/.ssh/config
echo "Host github.com
            HostName github.com
            Port 822
            Preferredauthentications publickey
            IdentityFile ~/.ssh/id_github" > ~/.ssh/config
```

### Go to gitlab and copy pub key into ssh keys setting
```
git clone git@github.com:paradom/dotfiles.git
```

### Clone the repository
```
Clone the repository over ssh
```

### Copy the setup script and run it
```
bash dotfiles/setup.sh ./
```

### Install pluggins with Vundle
```
vim -c 'PluginInstall' -c 'qa!'
```
