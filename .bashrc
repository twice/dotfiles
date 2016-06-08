#pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

#use the command below to install a package system wide outside any virtualenv
#globalpip install --upgrade pip_package
gpip() {
  PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

gpip3() {
  PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}

PATH=$PATH:$HOME/bin
export COMPOSER_HOME=~/.composer
export PYTHONPATH=/usr/local/bin/python3
export PYTHONSTARTUP=$HOME/.pythonrc

export PGDATA=/usr/local/var/postgres

source /usr/local/bin/virtualenvwrapper.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
