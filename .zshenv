# Path
typeset -U path
path=(
  $HOME/.anyenv/bin(N-/)
  /usr/local/sbin(N-/)
  /usr/local/opt/bison@2.7/bin(N-/)
  $path
)

# Anyenv
eval "$(anyenv init -)"
eval "$(ndenv init -)"
eval "$(phpenv init -)"
eval "$(pyenv init -)"
eval "$(rbenv init -)"

#export PATH="$HOME/.anyenv/bin:$PATH"
#export PATH="/usr/local/sbin:$PATH"
#export PATH="/usr/local/opt/bison@2.7/bin:$PATH"
