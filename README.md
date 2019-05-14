# dotfiles


### Install

Clone the repo

```
$ git clone https://github.com/keethealth/dotfiles.git
$ cd dotfiles/
```

Set up local env vars

```
$ cp set_env.sh $HOME/.dot_env.sh
```

Update the default variables
```
export DOTFILES_PATH=$HOME/.dotfiles
export GITHUB_REPO=https://github.com/keethealth/dotfiles.git
export GITHUB_NAME="Your Name"
export GITHUB_USERNAME="github_username"
export GITHUB_EMAIL="your@keethealth_email.com"
```

Install brew

```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ source $HOME/.dot_env.sh && bash install.sh  
```
