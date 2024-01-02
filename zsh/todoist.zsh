# Todoist 
# Load autocomplete
PROG=todoist source "$GOPATH/src/github.com/urfave/cli/autocomplete/zsh_autocomplete"
# Use fzf
source "$GOPATH/src/github.com/sachaos/todoist/todoist_functions_fzf.sh"

alias td="todoist --color --header"
