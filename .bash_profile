export PATH=$PATH:/usr/local/go/
#PS1='⚗ \W\$ '
#PS1='⚗ \W ☽ '
#~/hmoo-bin/bash-prompt.sh
RESET="\[\017\]"
NORMAL="\[\033[0m\]"
RED="\[\033[31;1m\]"
YELLOW="\[\033[33;1m\]"
WHITE="\[\033[37;1m\]"
SMILEY="${WHITE}:)${NORMAL}"
FROWNY="${RED}:(${NORMAL}"
SELECT="if [ \$? = 0 ]; then echo \"${SMILEY}\"; else echo \"${FROWNY}\"; fi"
# Throw it all together 
PS1="${RESET}${YELLOW}\h${NORMAL} \`${SELECT}\` ${YELLOW}>${NORMAL} "
#
#



export MANPATH="$MANPATH:/opt/local/share/man"
#export PATH="~/hmoo-bin:~/bin:/usr/local/bin:/usr/bin:/opt/local/sbin:/opt/local/bin:$PATH"
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend
alias octave="/Applications/Octave.app/Contents/Resources/bin/octave"
alias iddqd="sudo -s"
alias gimme="sudo port install "
alias ogygia="sudo ifoconfig en1 ether 00:1c:b3:c6:20:3a"
alias huyak="sudo ifconfig en1 ether 00:1b:c2:b8:40:5b"
alias хуяк="sudo ifconfig en1 ether 00:1b:c2:b8:40:5b"
alias kirvas="networksetup -setairportnetwork kirvas-home 9031131323"
alias кирвас="networksetup -setairportnetwork kirvas-home 9031131323"
alias kirvas-work="networksetup -setairportnetwork kirvas-work 9031131323"
alias hineini="networksetup -setairportnetwork hineini ppp2795312mtu"
alias лена="networksetup -setairportnetwork hineini ppp2795312mtu"
alias Лена="networksetup -setairportnetwork hineini ppp2795312mtu"
echo "< .bash_profile"