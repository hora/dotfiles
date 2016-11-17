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

# Abbreviations
# -------------

# Git
abbr -a g   git
abbr -a ga  git add
abbr -a gc  git commit
abbr -a gco git checkout
abbr -a gd  git diff
abbr -a glg git log --stat
abbr -a gp  git push
abbr -a gst git status
abbr -a gup git pull --rebase

# Navigation
abbr -a ..   cd ..
abbr -a ...  cd ../..
abbr -a .... cd ../../..
abbr -a l    ls

# Utilities
abbr -a c clear
abbr -a nap pmset sleepnow

# Applications
abbr -a ff open -a firefox
abbr -a nv 'open -a "notational velocity"'

