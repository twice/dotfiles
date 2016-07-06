if [ -e /usr/share/terminfo/x/xterm-256color ]; then
	export TERM='xterm-256color'
fi


export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad

#Create and change to a new directory 
function todir() { 
  mkdir -p "$*" && cd "$*" 
} 

#Python aliases
alias py='python'
alias py3='python3'
alias clean_pyc="find . -name '*.pyc' -delete"
alias pm='python manage.py '
alias pyman='python manage.py '
alias pmr='python manage.py runserver'
alias pms='python manage.py shell'
alias wk='workon'

#Command line aliases
alias l='ls -1p'
alias lal='ls -alFG'
alias la='ls -1pa' 
alias ll='ls -lhFG'
alias mkdir='mkdir -pv' 
alias ..='cd ..' 
alias ...='cd ../..' 
alias ~='cd ~'

#Docker aliases
alias dm='docker-machine'
alias dcm='docker-compose'

#Git aliases 
alias ga='git add' 
alias gb='git branch' 
alias gc='git commit' 
alias gd='git diff' 
alias gds='git diff --staged' 
alias gl='git log --oneline --decorate'
alias glg="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(blue)%h%C(reset) - %C(green)(%ar)%C(reset) %C(white)%s%C(reset) %C(magenta)- %an%C(reset)%C(yellow)%d%C(reset)' --all"  
alias go='git checkout'
alias gs='git status -s -b'
alias gst='git status'
alias gpf='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
alias gdm='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'

# Postgres aliases
alias pg='pg_ctl'
alias pg_start='pg_ctl -w start'
alias pg_stop='pg_ctl -s -m fast stop'
alias startpg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stoppg='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias restartpg='stoppg && sleep 1 && startpg'
alias statuspg='pg_ctl status -D /usr/local/var/postgres -s'

# bazaar aliases
alias b='bzr'
alias ba='bzr add'
alias bbr='bzr branch'
alias bc='bzr commit'
alias bco='bzr checkout'
alias bl='bzr log'
alias bs='bzr status'
alias bu='bzr uncommit'

export PATH="~/.npm-global/bin:/usr/local/sbin:$PATH"

#Source external scripts

#source ~/.oh-my-git/prompt.sh
source ~/bin/git-completion.bash
. ~/.bash_prompt
