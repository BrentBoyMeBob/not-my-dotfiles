HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
NEWLINE=$'\n'

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**' '+r:|[._-]=** r:|=** l:|=*'
zstyle ':completion:*' original true
zstyle :compinstall filename '~/.zshrc'
stty stop undef
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "$terminfo[kcuu1]" up-line-or-beginning-search
bindkey "$terminfo[kcud1]" down-line-or-beginning-search
bindkey -M vicmd 'k' up-line-or-beginning-search
bindkey -M vicmd 'j' down-line-or-beginning-search
bindkey '^P' autosuggest-accept
autoload -Uz compinit
compinit
bindkey -v
source ~/.zsh/zsh-plugins/zsh-autosuggestions.zsh
source ~/.zsh/zsh-plugins/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-functions/autols

setopt extendedglob autocd interactive_comments prompt_subst
unsetopt nomatch notify beep
bindkey -v
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats "%B on %F{magenta} %b%u%f"
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:*' check-for-changes true

precmd() {
    vcs_info
}

prompt='%B%F{12}%2~${vcs_info_msg_0_}%f »  %b'
RPROMPT='%T'

#export TERMINAL="kitty"
#export EDITOR="vim"
alias ezsh="vim ~/.zshrc"
#alias nf="neofetch"
#alias ls="colorls"
alias upd="sudo pacman -Syu"
alias ins="sudo pacman -S"
alias rzsh="source ~/.zshrc"
#alias cat="bat"
alias ga="git add"
alias gps="git push"
alias gpl="git pull"
alias gin="git init"
alias gcl="git clone"
alias grv="git remote -v"
alias gra="git remote add"
alias gs="git status"
alias gl="git log"
alias grebase="git rebase"
alias gmerge="git merge"

#neofetch
#colorscript -e zwaves
