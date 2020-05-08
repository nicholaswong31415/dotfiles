source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# If you want to use vi mode in the terminal uncomment this line:
# bindkey -v

# I currently don't use any executables in this directory
# export PATH="/usr/local/sbin:$PATH"

# Command Prompt
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{blue}%1~%f%b %# '

# Show git branch
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{magenta}(%b) %r%f'
zstyle ':vcs_info:*' enable git

# This is required by Node Version Manager

export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliases
alias hack='cd ~/Documents/plushcodes/'
