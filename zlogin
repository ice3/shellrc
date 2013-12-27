# load all files from .shell/login.d directory
if [ -d ~/.shellrc/login.d ]; then
  for file in ~/.shellrc/login.d/*.sh; do
    source $file
  done
fi
