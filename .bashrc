#!/bin/bash
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

export PATH=/usr/local/bin:$PATH
export PATH=/home/isucon/.local/ruby/bin:$PATH
export PATH=/home/isucon/.local/node/bin:$PATH
export PATH=/home/isucon/.local/python3/bin:$PATH
export PATH=/home/isucon/.local/perl/bin:$PATH
export PATH=/home/isucon/.local/php/bin:$PATH
export PATH=/home/isucon/.local/php/sbin:$PATH
export PATH=/home/isucon/.local/go/bin:$PATH
export GOROOT=/home/isucon/.local/go
export GOPATH=/home/isucon/webapp/go
export PATH=/home/isucon/.local/scala/bin:$PATH

# git
alias g='git'
alias ga='git add'
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gb='git branch'
alias gst='git status'
alias gco='git checkout'
alias gf='git fetch'
alias gci='git commit'

alias al='alp ltsv -c ~/alp.yml | less'
alias als='alp ltsv -c ~/alp.yml | slackcat -t -c cancer_acropolis -n alp.txt'

alias pt='sudo pt-query-digest --limit 10 --report-format profile,query_report /var/log/mysql/slow.log | less'
alias pts='sudo pt-query-digest --limit 10 --report-format profile,query_report /var/log/mysql/slow.log | slackcat -c cancer_acropolis -n slowlog.txt'

alias pp='go tool pprof -png -output ~/pprof/pprof.png http://localhost:6060/debug/pprof/profile'
alias pps='go tool pprof -png -output ~/pprof/pprof.png http://localhost:6060/debug/pprof/profile && slackcat -c cancer_acropolis -n pprof.png ~/pprof/pprof.png'

alias deploy='~/webapp/go/scripts/deploy.sh'
alias applog='sudo journalctl -f -u isuxi.go'

stty stop undef

