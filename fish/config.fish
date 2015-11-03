# General
# -------
set fish_greeting
function fish_user_key_bindings
    fish_vi_key_bindings
end
rvm default

set -x EDITOR vim
set -x LC_ALL en_CA.UTF-8
set -x LANG en_CA.UTF-8
set -x PATH /usr/local/bin $PATH

# Functions
# ---------

# Git
function g   ; git $argv ; end
function ga  ; git add $argv ; end
function gc  ; git commit $argv ; end
function gco ; git checkout $argv ; end
function gd  ; git diff $argv ; end
function glg ; git log --stat $argv ; end
function gp  ; git push $argv ; end
function gst ; git status $argv ; end
function gup ; git pull --rebase $argv ; end

# Navigation
function ..   ; cd .. ; end
function ...  ; cd ../.. ; end
function .... ; cd ../../.. ; end
function l    ; ls $argv ; end

# Utilities
function c ; clear ; end

# Completions
# -----------
function make_completion --argument-names alias command
    echo "
    function __alias_completion_$alias
        set -l cmd (commandline -o)
        set -e cmd[1]
        complete -C\"$command \$cmd\"
    end
    " | .
    complete -c $alias -a "(__alias_completion_$alias)"
end

make_completion g 'git'
