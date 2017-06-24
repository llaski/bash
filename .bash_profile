# Aliases
alias refresh='. /Users/$USER/.bash_profile'
alias sites='cd /Users/$USER/Sites'
alias subl='open -a "Sublime Text"'
alias bash='subl ~/.bash_profile'
alias hosts='subl /etc/hosts'
alias phpunit='vendor/bin/phpunit'
alias ll='ls -lhaG'
alias show_hidden_files="defaults write com.apple.finder AppleShowAllFiles TRUE"
alias hide_hidden_files="defaults write com.apple.finder AppleShowAllFiles FALSE"

alias artisan="php artisan"

#Github aliases
alias gs="git status"
alias ga="git add"
alias gb="git branch"
alias gc="git commit -m"
alias gca="git commit -am"
alias gp="git pull"
alias gpu="git push"
alias gch="git checkout"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias dk='docker'
alias dkm='docker-machine'
alias dkc='docker-compose'

#Additions
export PATH="/Users/larrylaski/bin:/Users/larrylaski/.composer/vendor/bin:/usr/lib/node_modules:/usr/local/bin:/usr/local/sbin:$(brew --prefix homebrew/php/php56):/bin:$PATH"
export EDITOR='subl -w'
export CLICOLOR=1

#Colors
txtblk='\[\033[0;30m\]' # Black - Regular
txtred='\[\033[0;31m\]' # Red
txtgrn='\[\033[0;32m\]' # Green
txtylw='\[\033[0;33m\]' # Yellow
txtblu='\[\033[0;34m\]' # Blue
txtpur='\[\033[0;35m\]' # Purple
txtcyn='\[\033[0;36m\]' # Cyan
txtwht='\[\033[0;37m\]' # White

bldblk='\[\033[1;30m\]' # Black - Bold
bldred='\[\033[1;31m\]' # Red
bldgrn='\[\033[1;32m\]' # Green
bldylw='\[\033[1;33m\]' # Yellow
bldblu='\[\033[1;34m\]' # Blue
bldpur='\[\033[1;35m\]' # Purple
bldcyn='\[\033[1;36m\]' # Cyan
bldwht='\[\033[1;37m\]' # Whiteca

txtrst='\[\033[0m\]'    # Text Reset

function ps1_git_branch {
  # return branch name
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " ("${ref#refs/heads/}"$(ps1_git_dirty))"
}
function ps1_git_dirty {
  # Returns "*" if the current git branch is dirty.
  # echo -n ""
  # DISABLED FOR PERFORMANCE
  [[ $(git diff --shortstat 2> /dev/null | tail -n1) != "" ]] && echo "*"
}

export PS1="$txtgrn$USER:$txtcyn\$PWD $txtgrn\$(ps1_git_branch)$txtylw ⚡  $txtcyn"

if [ -f $HOME/Settings/bash/.bash_profile_env ]; then
    . $HOME/Settings/bash/.bash_profile_env
fi
