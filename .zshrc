source /home/battle/antigen.zsh 

export LANG=en_US.UTF-8
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen bundle subnixr/minimal

# Tell Antigen that you're done.
antigen apply

alias ll="ls -la"
alias l="ls -l"
alias n="nvim"
alias nv="nvim"
alias v="nvim"
# open .zshrc
alias nz="nvim ~/.zshrc"
alias nn="nvim ~/.config/nvim/init.vim"
alias clr="clear"
alias pac="pacman"
alias ..="cd .."

#launching a shell and quits after 1 command
if [[ -n ${LAUNCHER} ]]; then
    bindkey -s "^M" " & \n"
    bindkey -s "^[" "^U exit \n"
    return
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"
# set -gx FZF_DEFAULT_COMMAND  'rg --files --no-ignore-vcs --hidden'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
# export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow'
# export FZF_CTRL_T_COMMAND='rg --files --no-ignore --hidden --follow'
export FZF_CTRL_T_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
