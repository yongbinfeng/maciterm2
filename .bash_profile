alias ll='ls -l'
alias la='ls -a'

export CLICOLOR=1
#export LSCOLORS=gxfxcxdxbxegedabagacad
export TERM=xterm-256color

export GREP_OPTIONS='--color=auto'

export ROOTSYS=/Applications/root_v6.04.10
export PATH=$PATH:$ROOTSYS/bin
export LD_LIBRARY_PATH=$ROOTSYS/lib:$LD_LIBRARY_PATH
export PYTHONPATH=$ROOTSYS/lib:/usr/lib/python2.7/usr/bin/python

if brew list | grep coreutils > /dev/null ; then
  PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
  alias ls='ls -F --show-control-chars --color=auto'
  eval `gdircolors -b $HOME/.dir_colors`
fi
