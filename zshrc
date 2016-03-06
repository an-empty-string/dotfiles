export ZSH=/home/fwilson/.oh-my-zsh

ZSH_THEME="flazz"

COMPLETION_WAITING_DOTS="true"
plugins=(git gpg-agent autojump rsync mosh pass archlinux)
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/fwilson/bin/"
export EDITOR="vim"
source $ZSH/oh-my-zsh.sh

SSH_AUTH_SOCK=/home/fwilson/.gnupg/S.gpg-agent.ssh; export SSH_AUTH_SOCK;
