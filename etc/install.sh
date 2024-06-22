#!/bin/bash

#@TODO: Makes sure this matches the relative path to the script
RELATIVE_PATH="etc"
DESIRED_RUBY_VERSION="3.3.3"

##########################################
# Check setup can start properly.
##########################################
# Get the current directory.
current_dir=$(pwd)

# Check if we're in /etc/dev.
if [[ "$current_dir" == *"$RELATIVE_PATH"* ]]; then
    echo "You seem to be in $RELATIVE_PATH folder. Moving you to base directory"
    cd ../
    # Now we should be in the base directory.
    echo "You are currently in $(pwd)"
fi

# Check and set Basedir
current_file=$(basename "$0")
if [ -f "./etc/$current_file" ]; then
    base_dir=$(pwd)
    echo  -e "\033[32mBase Directory OK !!!\033[0m"
else
    #exit with a failure message
    echo -e "\033[31mPlease execute this script from base of your repository\033[0m"
    exit 1
fi

# Include utilities definitions from external script.
source "$base_dir/etc/includes/utils.sh"
console_success "Base Directory is set to $base_dir"

##########################################
# Install dependencies
##########################################
# Check if rbenv is installed and its version
if ! which rbenv > /dev/null || [[ $(rbenv --version | cut -d " " -f2) < 1.2.0 ]]; then
    brew install rbenv
    console_success "rbenv installed"
fi
console_success "rbenv [OK]"


# Check if ruby-build is installed
if ! which ruby-build > /dev/null; then
    brew install ruby-build
    console_success "ruby-build installed"
fi
console_success "ruby-build [OK]"


# Check if the desired version of Ruby is installed and set as global
if [[ $(rbenv versions --bare | grep -x $DESIRED_RUBY_VERSION) != $DESIRED_RUBY_VERSION ]] || [[ $(rbenv global) != $DESIRED_RUBY_VERSION ]]; then
    echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
    rbenv init
    rbenv install $DESIRED_RUBY_VERSION
    rbenv global  $DESIRED_RUBY_VERSION
    console_success "Ruby $DESIRED_RUBY_VERSION installed and set as global"
fi
console_success "Ruby $DESIRED_RUBY_VERSION [OK]"

#create the  _sass and assets folders by unzipping the backup files
if [ ! -d "$base_dir/_sass" ]; then
  sass_file_path="$base_dir/../scratchpad/amitshanbhag.com.backupfiles/_sass.zip"
  # Check if file exists, if it does, unzip it
  if [ -f "$sass_file_path" ]; then
      unzip $sass_file_path
      console_success "created '_sass' directory"
  else
      console_error "File $sass_file_path does not exist"
      exit 1
  fi
fi
console_success "'_sass' [OK]"

if [ ! -d "$base_dir/assets" ]; then
  assets_file_path="$base_dir/../scratchpad/amitshanbhag.com.backupfiles/assets.zip"
  # Check if file exists, if it does, unzip it
  if [ -f "$assets_file_path" ]; then
      unzip $assets_file_path
      console_success "created 'assets' directory"
  else
      console_error "File $assets_file_path does not exist"
      exit 1
  fi
fi
console_success "'assets' [OK]"

##########################################
# Install jekyll and theme packages
##########################################
# Check if bundler is installed
#this may need sudo access
if ! gem list bundler -i > /dev/null; then
    gem install bundler
    console_success "bundler installed"
fi
console_success "bundler [OK]"

bundle install --gemfile $base_dir/etc/dev.Gemfile