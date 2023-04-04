if status is-interactive
    #mands to run in interactive sessions can go here
end

set fish_greeting "Hello $USER!"

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
# alias cd "z"
alias ls "exa --icons --classify --group-directories-first"
alias la "exa --all --icons --classify --group-directories-first"
alias ll "exa --icons --classify --group-directories-first -l"
alias lla "exa --all --icons --classify --group-directories-first -l"
alias lt "exa --tree --level=1 --all --icons --classify --group-directories-first"
alias g git
alias awsProfile:SandboxAdmin "export AWS_PROFILE=tms_sandbox_admin"
alias awsProfile:SandboxTFTest "export AWS_PROFILE=tms_sandbox_test"
alias oacf "open ~/.aws/config && open ~/.aws/credentials"
command -qv nvim && alias vim nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
# Homebrew Path
set -gx PATH /opt/homebrew/bin $PATH

zoxide init fish | source

# set -x NVM_DIR ~/.nvm
#nvm use default --silent

# nvm_find_nvmrc > /dev/stderr
# load_nvm > /dev/stderr

# set -g tide_left_prompt_items context $tide_left_prompt_items
# NodeJS
# set -gx PATH node_modules/.bin $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
    status --is-command-substitution; and return

    if test -f .nvmrc; and test -r .nvmrc;
        nvm use
    else
        nvm use default --silent
    end
end

#switch (uname)
#  case Darwin
#    source (dirname (status --current-filename))/config-osx.fish
#  case Linux
#    source (dirname (status --current-filename))/config-linux.fish
#  case '*'
#    source (dirname (status --current-filename))/config-windows.fish
#end

#set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
#if test -f $LOCAL_CONFIG
#  source $LOCAL_CONFIG
#end
