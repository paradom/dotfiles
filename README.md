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
            Preferredauthentications publickey
            IdentityFile ~/.ssh/id_github" > ~/.ssh/config
```
Go to [github](https://github.com/settings/profile) and copy pub key into ssh keys setting.

### Clone the repository
```
git clone git@github.com:paradom/dotfiles.git
```

### Copy the setup script and run it
```
bash dotfiles/setup.sh ./
```

### Install pluggins with Vundle
```
vim -c 'PluginInstall' -c 'qa!'
```
