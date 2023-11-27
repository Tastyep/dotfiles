source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle zpm-zsh/material-colors
antigen bundle zpm-zsh/ls

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Colored man pages.
antigen bundle ael-code/zsh-colored-man-pages

antigen bundle agkozak/zsh-z

# Load the theme.
antigen theme robbyrussell

antigen bundle zsh-users/zsh-autosuggestions

# Tell Antigen that you're done.
antigen apply

