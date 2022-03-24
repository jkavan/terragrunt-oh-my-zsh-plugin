function tg_prompt_info() {
    # dont show 'default' workspace in home dir
    [[ "$PWD" == ~ ]] && return
    # check if in terraform dir
    if [ -d .terraform ]; then
      workspace=$(terragrunt workspace show 2> /dev/null) || return
      echo "[${workspace}]"
    fi
}

# alias
alias tg="terragrunt"
