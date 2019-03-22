# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export PATH=$PATH:$HOME/.local/bin:$HOME/bin
export TERM=screen-256color
export PS1="[${USER}@${HOSTNAME%%.*} \D{%T}] \W > "

if [ -f ~/.spack/share/spack/setup-env.sh ]; then
  . ~/.spack/share/spack/setup-env.sh
fi
