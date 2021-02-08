# https://gist.github.com/phette23/5270658#gistcomment-1265682
# https://github.com/fish-shell/fish-shell/issues/2692

# Set iTerm2 tab titles to the last directory in PWD
tabTitle() { echo -ne "\033]0;"$*"\007"; }
# Set iTerm2 win titles to the full directory of PWD
winTitle() { echo -ne "\033]2;"$*"\007"; }

# Alias 'cd' to list directory and set title
cd() { builtin cd "$@"; ls -lFah; tabTitle ${PWD##*/}; winTitle ${PWD/#"$HOME" /~}; }
