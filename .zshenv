export LANG=en_US.UTF-8

export ZSHDIR=$HOME/.zsh.d

typeset -U path
path=(
    # user
    $HOME{/.linuxbrew,/local,/Dropbox,}/bin(N-/)
    # Linux
    {/usr/local,/usr,}{/sbin,/bin}(N-/)
)

typeset -U fpath
fpath=(
    $HOME/.linuxbrew/share/zsh/site-functions(N-/)
    $fpath
)

typeset -U manpath
manpath=(
    # user
    $HOME/local/share/man(N-/)
    # Linux
    {/usr/local,/usr}/share/man(N-/)
)

export EDITOR=vim

# linuxbrew
export LD_LIBRARY_PATH=$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH

# brewed rbenv
if which rbenv > /dev/null; then
    export RBENV_ROOT=$(brew --prefix)/var/rbenv
fi

# local zshenv
if [ -f $HOME/.zshenv.local ]; then
    source $HOME/.zshenv.local
fi
