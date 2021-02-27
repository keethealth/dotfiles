# dotfiles


### Install

Download the env vars file
```
curl -L https://raw.githubusercontent.com/keethealth/dotfiles/master/set_env.sh -o ~/.dot_env
```

Update the env vars for your github user and install
 ```
source ~/.dot_env && bash <(curl -fsSL https://raw.githubusercontent.com/keethealth/dotfiles/master/install)
```


### Update / Run the dotfiles locally
Clone the repo

```
$ git clone https://github.com/keethealth/dotfiles.git
$ cd dotfiles/
```

Set up local env vars

```
$ cp set_env.sh $HOME/.dot_env
```

Update the default variables
```
export DOTFILES_PATH=$HOME/dotfiles
export GITHUB_REPO=https://github.com/keethealth/dotfiles.git
export GITHUB_NAME="Your Name"
export GITHUB_USERNAME="github_username"
export GITHUB_EMAIL="your@keethealth_email.com"
```

Install brew

```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ source $HOME/.dot_env && bash install.sh  
```



## Big Sur & M1 Macs

#### Change Shell to BASH

```
chsh -s /bin/bash
```

#### Install Rosetta

```
softwareupdate --install-rosetta
```

#### Create Rosetta Terminal

Duplicate the terminal app and set to run in rosetta.
Use that version of the terminal app to setup dev environment.

https://dev.to/courier/tips-and-tricks-to-setup-your-apple-m1-for-development-547g


#### Run dotfiles  

```
cd dotfiles/
cp set_env.sh $HOME/.dot_env
source ~/.dot_env && bash install.sh
```

#### Silence Mac Warning

If using bash shell, silence the warnings.

Add to `~/.bash_profile`

```
export BASH_SILENCE_DEPRECATION_WARNING=1
```

#### Docker

Install Docker for M1

*** only preview available

https://docs.docker.com/docker-for-mac/apple-m1/
