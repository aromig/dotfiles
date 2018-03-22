function fish_prompt --description 'Write out the prompt'
	set -l last_status $status

    # User
    set_color 00aaff
    echo -n (whoami)
    set_color 808080

    echo -n '@'

    # Host
    # set_color $fish_color_host
    # echo -n (prompt_hostname)
    # set_color normal

    # echo -n ':'

    # PWD
    # set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal

    __terlar_git_prompt
    __fish_hg_prompt
    echo

    if not test $last_status -eq 0
        set_color $fish_color_error
    end
# ➤
    echo -n '🐧: '
    set_color normal
end
