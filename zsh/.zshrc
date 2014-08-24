    if [ -f ~/.CapsToControl.map.gz ]; then
        sudo loadkeys ~/.CapsToControl.map.gz
    fi
#
#Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sjas"
#ZSH_THEME="wedisagree"
#ZSH_THEME="prose" 
#todo line above is sjl theme, but buggy...

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
 COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
source $ZSH/oh-my-zsh.sh
source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
plugins=(command-coloring zsh-syntax-highlighting)


# Customize to your needs...
#dont let the prompt overwrite output
unsetopt promptcr
#no damned autocorrect
unsetopt correct_all

export PAGER='less'
export EDITOR=vim
export VISUAL=vim
export SVN_EDITOR=vim

# less
        # ignorecase in search, status, no bell
          # -I ignorecase
          # -F text amounts lesser than one page are not shown
          # -J status column at left edge of screen
          # -m -M long prompt
          # -N line numbers
          # -n no line numbers
          # -q quiet (no bell rung)
          # -w hilite unread
        #export LESS="-q -J -I" # DONT, else git log output is b/w...

     # LESS COLORS FOR MAN PAGES
        export LESS_TERMCAP_mb=$'\E[1;31m'       # begin blinking
     # CHANGE FIRST NUMBER PAIR FOR COMMAND AND FLAG COLOR
        export LESS_TERMCAP_md=$'\E[1;32m'  # begin bold... now Green
     # CHANGE FIRST NUMBER PAIR FOR PARAMETER COLOR
        export LESS_TERMCAP_us=$'\E[1;33m' # begin underline ... now Yellow
        export LESS_TERMCAP_me=$'\E[0m'           # end mode
        export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
        export LESS_TERMCAP_so=$'\E[38m'    # begin standout-mode - info box
        export LESS_TERMCAP_ue=$'\E[0m'           # end underline

     # Colorcodes:
     # Black       0;30     Dark Gray     1;30
     # Red         0;31     Light Red     1;31
     # Green       0;32     Light Green   1;32
     # Brown       0;33     Yellow        1;33
     # Blue        0;34     Light Blue    1;34
     # Purple      0;35     Light Purple  1;35
     # Cyan        0;36     Light Cyan    1;36
     # Light Gray  0;37     White         1;37
     #########################################
# # # # # # # # # # # # # # # # # # #


source ~/.dotfiles/aliases/fasteditaliases
source ~/.dotfiles/aliases/aliases
source ~/.dotfiles/aliases/gitaliases
setopt GLOB_COMPLETE


HISTSIZE=10000

# # # # # # # # # # # # # # # # # # #

## jumpmarks completion for zsh, see aliases file for rest
_completemarks(){
    local curw=${COMP_WORDS[COMP_CWORD]}
    local wordlist=$(find $JUMPMARKPATH -type l -printf "%f\n")
    COMPREPLY=($(compgen -W '${wordlist[@]}' -- "$curw"))
    return 0
}
complete -F _completemarks j um


eval $(ssh-agent|\grep -v echo)
ssh-add > /dev/null
