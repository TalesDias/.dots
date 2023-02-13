# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export PATH=$PATH:~/.local/bin

export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export SLD_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
