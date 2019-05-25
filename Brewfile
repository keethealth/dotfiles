
# Taps
tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/cask-versions"
tap "homebrew/cask-fonts"
tap "homebrew/core"
tap "homebrew/services"
tap "AdoptOpenJDK/openjdk"

# utitlities
brew 'wget'
brew 'git'
brew 'git-extras'
brew 'bash-completion'
brew 'hub'
brew 'coreutils'
brew 'autoconf'
brew 'automake'
brew 'gnupg'
brew 'gnupg2'
brew 'mas'
brew 'openssl'
brew 'jq'
brew 'httpie'
cask 'betterzip'

# databases and tools
brew 'mysql'
brew 'postgresql', restart_service: :changed
brew 'pgcli'
brew 'mongodb'
brew 'memcached'
brew 'redis', restart_service: :changed
brew 'rabbitmq'
brew 'kafka'
# brew 'presto'
# brew 'apache-drill'
# brew 'influxdb'
# brew 'neo4j'
brew 'zookeeper'

# media libs and tools
brew 'ghostscript'
brew 'imagemagick'
brew 'fdk-aac'
brew "ffmpeg", args: ["build-from-source", "with-fdk-aac", "with-ffplay", "with-freetype", "with-libass", "with-libquvi", "with-libvorbis", "with-libvpx", "with-opus", "with-x265", "with-openh264"]
# brew "ffmpeg"
brew 'media-info'
brew 'youtube-dl'

# aws tools
brew 'awscli'
brew 'aws-elasticbeanstalk'
brew 'amazon-ecs-cli'
brew 'chamber'
brew 'terraform'
brew 's3cmd'
brew 'awslogs'
brew 'cli53'

# install apps
cask "AdoptOpenJDK/openjdk/adoptopenjdk8"
cask 'bbedit'
cask 'atom'
cask 'transmit'
cask 'slack'
cask 'docker'
cask 'firefox'
cask 'homebrew/cask-versions/google-chrome-beta'
cask 'sequel-pro'
# cask 'vlc'
# cask 'iterm2'
# cask 'duet'
cask "postman"

# Quicklook
cask 'qlcolorcode'
cask 'qlmarkdown'
cask 'quicklook-json'
cask 'quicklook-csv'
cask 'qlstephen'
cask 'qlvideo'

# install mac app store apps via `mas`
mas 'Affinity Designer', id: 824171161
mas 'Magnet', id: 441258766
mas 'SnippetsLab', id: 1006087419
