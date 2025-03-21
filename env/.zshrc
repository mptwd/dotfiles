export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
  zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi


# zoxide
eval "$(zoxide init zsh)"

source $HOME/.zsh_profile
export PATH="$PATH:$HOME/.local/scripts"

function cd () {
  if [ -z "$1" ]
  then builtin cd
  else builtin cd "$*" && ls;
  fi
}

alias cp='cp --sparse=always --preserve=timestamps'

# git aliases
alias g='git'
alias ga='g add'
alias gs='g status'
alias gch='g checkout'
alias glog='g log --online --graph --decorate -20'
alias gl='git log --graph --pretty=fromat:"%Cred%h%Creset %Cgreen(%cd) %C(bold blue)<%an>%Creset %s -%C(yellow)%d%Creset"'
alias gc='g commit -m'
alias gd='g diff'

alias gp='g pull'
alias gps='g push'

#source ~/rose-pine-man/rose-pine-man.zsh
#source ~/.local/scripts/jf.sh
