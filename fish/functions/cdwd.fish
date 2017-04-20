# Open the specificed week and day directory in the current curriculum repo
# Does *not* need to be run from the curriculum root directory.
#
# @param week [String] week to cd to
# @param day [String] day to cd to
#
# @example
#     cdwd 2 1
#
#
function cdwd
    set root_dir (git rev-parse --show-toplevel)
    set dir "$root_dir/data"

    if test (count $argv) -eq 2
        set dir "$dir/Week $argv[1] Day $argv[2]"
    else
        echo "Must pass in week and day numbers"
        echo "For example, to cd to w2d4: cdwd 2 4"
    end

    # Go go go
    cd $dir
end

