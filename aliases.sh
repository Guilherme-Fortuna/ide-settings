# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'

# Terminal
alias c='clear'

# Git
alias gs='git status'
alias ga='git add .'
alias gc='git commit'
alias gk='git checkout'

alias gp='git pull'

alias gps='git push'
alias lau='git push'
alias tome='git push'

alias gm='git commit -m'
alias wip="git add .;git commit -m 'wip'"
alias wips="git add .;git commit -m 'wip';git push"
alias hotf="git add .;git commit -m 'hotfix';git push"
alias alt="git add .;git commit -m 'alt';git push"
alias refactor="git add .;git commit -m 'refactor';git push"
alias empty="git add .;git commit -m 'empty';git push"
alias hreset="git reset --hard HEAD"
alias reset="git reset --hard"
alias gclean="git clean -fxd"
alias gl="git log"
alias gam="git add .; git commit -m"
alias gb="git branch"
alias gtree="git log --graph --simplify-by-decoration --pretty=format:'%d' --all"


# Laravel
alias pa='php artisan'
alias a='php artisan'
alias amfs='a migrate:fresh --seed'
alias amf='a migrate:fresh'
alias amr='a migrate:rollback'
alias am='a migrate'
alias amm='a make:migration'
alias arl='a route:list'
alias aqueue='a queue'
alias aql='a queue:listen'
alias aqw='a queue:work'
alias aqwh='a queue:work --queue=high,default'
alias amodel='a make:model'
alias acontrol='a make:controller'
alias at='a test'
alias atf='a test --filter= '
alias avc='a view:clear; a config:clear; a cache:clear'

case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7 winget
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac
