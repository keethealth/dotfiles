SHELL = /bin/bash
DOTFILES_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
PATH := $(DOTFILES_DIR)/bin:$(PATH)
NVM_DIR := $(HOME)/.nvm
RVM_DIR := $(HOME)/.rvm
RUBY_VERSION=2.5.5

define HEADER
┌──────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│                                                                              │██
│                                                                              │██
│                .  ..___.___.___.  .  ..___.__..   .___..  .                  │██
│                |_/ [__ [__   |    |__|[__ [__]|     |  |__|                  │██
│                |  \[___[___  |    |  |[___|  ||___  |  |  |                  │██
│                                                                              │██
│                                                                              │██
│                                                                              │██
└──────────────────────────────────────────────────────────────────────────────┘██
  ████████████████████████████████████████████████████████████████████████████████
  ████████████████████████████████████████████████████████████████████████████████

endef

export HEADER

setup: splash sudo core packages

sudo:
	@echo "Prompting for sudo password..."
	sudo -v
	while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

splash:
	@echo "$$HEADER"

core: brew

brew:
	is-executable brew || curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | bash

rvm:
	@echo "Installing RVM"
	if ! [ -d $(RVM_DIR) ]; then $(DOTFILES_DIR)/pkg/rvm; fi
	$$SHELL -l -c "rvm install "ruby-$(RUBY_VERSION)""
	$$SHELL -l -c "rvm use "ruby-$(RUBY_VERSION)""

npm:
	if ! [ -d $(NVM_DIR)/.git ]; then git clone https://github.com/creationix/nvm.git $(NVM_DIR); fi
	. $(NVM_DIR)/nvm.sh; nvm install --lts

packages: brew-packages cask-apps gems

brew-packages:
	@echo "Installing Packages"
	brew bundle --file=$(DOTFILES_DIR)/packages/Brewfile || true

cask-apps: 	
	@echo "Installing Applications"
	brew bundle --file=$(DOTFILES_DIR)/packages/Caskfile || true

gems:
	@echo "Installing Gems"
	gem install $(shell cat packages/Gemfile)

defaults:
	@echo "Writing MacOS defaults"
	. $(DOTFILES_DIR)/macos/defaults