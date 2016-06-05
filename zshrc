export ZSH=/home/fwilson/.oh-my-zsh

ZSH_THEME="cypher"

COMPLETION_WAITING_DOTS="true"
plugins=(git gpg-agent autojump rsync mosh pass archlinux)
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/fwilson/bin/"
export EDITOR="vim"
source $ZSH/oh-my-zsh.sh

SSH_AUTH_SOCK=/home/fwilson/.gnupg/S.gpg-agent.ssh; export SSH_AUTH_SOCK;

transfer() { if [ $# -eq 0 ]; then echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi 
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; } 

PATH="/home/fwilson/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/fwilson/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/fwilson/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/fwilson/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/fwilson/perl5"; export PERL_MM_OPT;
