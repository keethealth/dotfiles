#!/usr/bin/env bash

DOTFILES_PATH=$HOME/.dotfiles
GITHUB_REPO=https://github.com/keethealth/dotfiles.git
GITHUB_NAME="Caresa Huddleston"
GITHUB_USERNAME="caresa"
GITHUB_EMAIL="caresa.huddleston@gmail.com"

main() {
  splash
  # Cloning Dotfiles repository for install_packages_with_brewfile
  # to have access to Brewfile
  if clone_dotfiles_repo; then
    bash "${DOTFILES_PATH}/main.sh"
  fi
}

install_homebrew() {
  e_header "Installing Homebrew..."
  if type_exists 'brew'; then
    success "Homebrew already exists."
  else
    url=https://raw.githubusercontent.com/Sajjadhosn/dotfiles/master/installers/homebrew_installer
    if /usr/bin/ruby -e "$(curl -fsSL ${url})"; then
      success "Homebrew installation succeeded."
    else
      error "Homebrew installation failed."
      exit 1
    fi
  fi
}

clone_dotfiles_repo() {
  echo "Cloning dotfiles repository into ${DOTFILES_PATH} ..."

  if test -e $DOTFILES_PATH; then
    echo "${DOTFILES_PATH} already exists."
    pull_latest $DOTFILES_PATH
  else
    if git clone "$GITHUB_REPO" $DOTFILES_PATH; then
      echo "Cloned into ${DOTFILES_PATH}"
    else
      error "Cloning into ${DOTFILES_PATH} failed."
      exit 1
    fi
  fi
}

pull_latest() {
  echo "Pulling latest changes in ${1} repository..."

  if git -C $1 pull origin master &> /dev/null; then
    echo "Pull successful in ${1} repository."
  else
    echo "Please pull the latest changes in ${1} repository manually."
  fi
}



splash() {
cat << "EOF"
┌──────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│                               KEET DOT                                       │██
│                               KEET DOT                                       │██
│                               KEET DOT                                       │██
│                               KEET DOT                                       │██
│                               KEET DOT                                       │██
│                               KEET DOT                                       │██
│                               KEET DOT                                       │██
│                               KEET DOT                                       │██
│                               KEET DOT                                       │██
│                               KEET DOT                                       │██
│                               KEET DOT                                       │██
│                               KEET DOT                                       │██
│                               KEET DOT                                       │██
│                               KEET DOT                                       │██
│                               KEET DOT                                       │██
└──────────────────────────────────────────────────────────────────────────────┘██
  ████████████████████████████████████████████████████████████████████████████████
  ████████████████████████████████████████████████████████████████████████████████
EOF
}

main "$@"
