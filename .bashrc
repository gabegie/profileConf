#
# ~/.bashrc
#

if [[ -e ~/.dir_colors ]] ; then
	eval $(dircolors -b ~/.dir_colors)
fi
if [[ -e ~/.alias ]]; then
	source ~/.alias
fi
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
	source /etc/profile.d/vte.sh
fi

alias sa="alias -p > ~/.alias"

if [[ $USER == root ]]; then
	PS1='\[\e[32m\]\u\[\e[0m\]@\[\e[31m\]\h \[\e[33m\]\w\[\e[0m\]\n# '
elif [[ $USER == gab ]]; then
	PS1='\[\e[32m\]\u\[\e[0m\]@\[\e[34m\]\h \[\e[33m\]\w\[\e[0m\]\nφ '
else
	PS1='\[\e[32m\]\u\[\e[0m\]@\[\e[34m\]\h \[\e[33m\]\w\[\e[0m\]\n$ '
fi
