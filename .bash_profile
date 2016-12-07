# rbenv
export PATH="/usr/local/sbin:$PATH"
eval "$(rbenv init -)"

# phpenv
export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"
export PHP_BUILD_CONFIGURE_OPTS="--with-openssl=$(brew --prefix openssl) --with-libxml-dir=$(brew --prefix libxml2)"
alias brew="env PATH=${PATH/$HOME\/\.phpenv\/shims:/} brew"
