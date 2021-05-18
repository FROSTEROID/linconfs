
# don't mess up non-interactive calls
case $- in
    *i*) ;;
      *) return;;
esac

# Cute PromptString to see whoandwhereami:
#PS1='\[\e[0;32m\]\u\[\e[m\]\[\e[1;34m\][\w]\[\e[m\]$ '
PS1="\n\[\e[32;1m\]\u@\H\[\e[32;1m\](\[\e[37;1m\]jobs:\j\[\e[32;1m\])\[\e[33;1m\] \t \[\e[34;1m\]\w\n$ \[\e[0m\]"
# And i <s>don't</s> want it to be long. (For Bash>=4)
PROMPT_DIRTRIM=0

#Some sticky aliases for my Windows fapping to continue
alias cd..="cd .."
alias cd-="cd -"

#Cute and fast listig for all!
alias ls="ls --color"
alias l="ls -AFX"
alias ll="ls -AlhF"
alias lx="ls -lAhcX"
alias lr="ls -AlhFR | grep -B 1 total"
alias lt="ls -alhFt"

#Grep them all!
alias grep="grep --color=never"
alias gep="grep -i"
alias grepc="grep --color=always"
alias gepc="grepc -i"

# git is love, git is life
alias gs="git status"
alias gd="git diff"
alias gch="git checkout"
alias gl="git log"
alias gb="git branch"
# output somewhat looking like the list commits which are present on the current branch and not present on master
alias commits="git log \`git status | head -n 1 | awk '{print \$3}'\` ^master | awk '/    / {print \$0}' | sed 's/    /- /g'"

# stderr is not ERR enough sometimes
rederr()(set -o pipefail;"$@" 2>&1>&3|sed $'s,.*,\e[31m&\e[m,'>&2)3>&1

# Show sensors info every 3 seconds.
# Need lm_sensors and some actions to be performed with sensors-detect. See Wiki firstly, please.
# Also your active fans can be on different numbers. 
# So firstly try to see what your "sensors" command gives.
# And then adjust the grepping sequence for your needs.
alias sense="for ((; ; )) 
				do 
					sensors |grep \"Core\\\|fan2\\\|fan6\"
					sleep 3
					clear 
				done"


#for tcsh:
#set prompt = "\n%B%{\033[34m%}[%h] %d %D.%w.%Y %P\n%{\033[31m%}[%n][%m][%~]\n%{\033[30m%}%b"
#my:
#set prompt = "%{\033[36m%}%n %{\033[1;34m%}[%/] %{\033[33m%}(%P)\n%#%{\033[0m%} "
