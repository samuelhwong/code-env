# Prettify the command line with powerline - https://github.com/justjanne/powerline-go
export GOPATH=$HOME/go
function _update_ps1() {
    PS1="$($GOPATH/bin/powerline-go -condensed -error $?)"
}
if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# asdf package version manager
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash