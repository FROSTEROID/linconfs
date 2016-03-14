# Cute PromptString to see whoandwhereami:
PS1='\[\e[0;32m\]\u\[\e[m\]\[\e[1;34m\][\w]\[\e[m\]$ '
# And i don't want it to be too long. (For Bash>=4)
PROMPT_DIRTRIM=3

#Some sticky aliases for my Windows fapping to continue
alias cd..="cd .."
alias cd-="cd -"
alias ipconfig="ifconfig"

#Cute and fast listig for all!
alias ls="ls --color"
alias l="ls -AFX"
alias ll="ls -AlhF"
alias lx="ls -lAhcX"
alias lr="ls -AlhFR | grep -B 1 total"
alias lt="ls -alhFt"

#And some applications. Of cource, you need to install some of them first.
alias gq="geeqie"

#Grep them all!
alias grep="grep --color"
alias gep="grep -i"

#Some user's apps:
alias qtox="~/.bin/qtox"
alias sublimet='~/.bin/sublime/sublime_text'
alias yedde='java -jar ~/bin/yed.jar'

alias xxx="startx"
#Go to Desktop at the start
#cd Desktop

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


#Shit for tcsh:
#set prompt = "\n%B%{\033[34m%}[%h] %d %D.%w.%Y %P\n%{\033[31m%}[%n][%m][%~]\n%{\033[30m%}%b"
#my:
#set prompt = "%{\033[36m%}%n %{\033[1;34m%}[%/] %{\033[33m%}(%P)\n%#%{\033[0m%} "
