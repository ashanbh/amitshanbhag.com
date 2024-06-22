#!/bin/bash
# Check if rbenv is installed and its version
if ! which rbenv > /dev/null || [[ $(rbenv --version | cut -d " " -f2) < 1.2.0 ]]; then
    brew install rbenv
fi

# Check if ruby-build is installed
if ! which ruby-build > /dev/null; then
    brew install ruby-build
fi

echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
rbenv init
rbenv install 3.3.3
rbenv global  3.3.3

#create the  _sass and _assets directory
unzip ../scratchpad/amitshanbhag.com.backupfiles/_sass.zip
unzip ../scratchpad/amitshanbhag.com.backupfiles/assets.zip


sudo gem install jekyll bundler
bundle install --gemfile dev.Gemfile
