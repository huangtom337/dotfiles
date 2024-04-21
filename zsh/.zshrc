# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

PS1='%n@%m:%~%# '

# Aliases
alias ll='ls -l'
alias la='ls -a'
# Theme
ZSH_THEME="agnoster"

# Plugins
plugins=(git z zsh-syntax-highlighting zsh-autosuggestions)

# Case-sensitive auto completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

export EDITOR=nvim
export TERMINAL=kitty

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dirge/dotifles/zsh/.zshrc'
# PATH
path=()
path+=('/bin')
path+=('/usr/bin')
path+=('/usr/sbin')
path+=('/sbin')

export PATH

autoload -Uz compinit
compinit
# End of lines added by compinstall
