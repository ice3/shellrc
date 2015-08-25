export WORKON_HOME=~/Envs
export VIRTUALENV_WRAPPER_HOME=/usr/local/bin/

if [ -f $VIRTUALENV_WRAPPER_HOME/virtualenvwrapper.sh ]; then
  .  $VIRTUALENV_WRAPPER_HOME/virtualenvwrapper.sh
fi