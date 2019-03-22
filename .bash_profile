# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin
TERM=screen-256color

export PATH
export TERM

if [ -f ~/.spack/share/spack/setup-env.sh ]; then
  . ~/.spack/share/spack/setup-env.sh
fi
