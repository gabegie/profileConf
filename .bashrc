#
# ~/.bashrc
#

# Couleur
if [[ -e ~/.dir_colors ]] ; then
 eval $(dircolors -b ~/.dir_colors)
fi

# Alias
if [[ -e ~/.alias ]]; then
  source ~/.alias
fi

alias sa="alias -p > ~/.alias"

# Tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
      source /etc/profile.d/vte.sh
fi

# Prompt
uid=`id -u`
ldpaMinUid=5000

if [[ $uid == 0 ]]; then
	PS1='\[\e[32m\]\u\[\e[0m\]@\[\e[31m\]\h \[\e[33m\]\w\[\e[0m\]\n# '
elif [[ $USER == gab ]]; then
	PS1='\[\e[32m\]\u\[\e[0m\]@\[\e[34m\]\h \[\e[33m\]\w\[\e[0m\]\nφ '
elif [[ $uid < $ldapMinUid ]]; then
	PS1='\[\e[32m\]\u\[\e[0m\]@\[\e[34m\]\h \[\e[33m\]\w\[\e[0m\]\n§ '
else
	PS1='\[\e[32m\]\u\[\e[0m\]@\[\e[34m\]\h \[\e[33m\]\w\[\e[0m\]\n$ '
fi

# .perso
if [[ -e ~/.perso ]]; then
  source ~/.perso
fi

