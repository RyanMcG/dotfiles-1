PATH="/usr/local/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
export CC=/usr/bin/gcc-4.2
export JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/java_home`
export EC2_HOME=~/Developer/ec2-tools/
export AWS_ACCESS_KEY=AKIAJBOC43GCRCBHOHMA
export AWS_SECRET_KEY=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
export PATH=$PATH:$EC2_HOME/bin
export PATH=$PATH:~/bin
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
PS1="\W\$(__git_ps1) \$ "


alias be="bundle exec"
alias ber="bundle exec rake"
alias bes="bundle exec rspec"
alias gs='git status'
alias gci='git commit'
alias gco='git checkout'
alias gf='git fetch'
alias grb='git rebase'
alias ga='git add .'
alias g='git '

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
