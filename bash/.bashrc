#
#
#     S  J  A  S     .  B  A  S  H  R  C
#
#
# # # # # # # # # # # # # # # # # # # # #


    if [ -f ~/.CapsToControl.map.gz ]; then
        sudo loadkeys ~/.CapsToControl.map.gz
    fi

#include fasteditaliases / aliases / gitaliases
        source ~/.dotfiles/aliases/fasteditaliases
        source ~/.dotfiles/aliases/aliases
        source ~/.dotfiles/aliases/gitaliases
# # # # # # # # # # # # # # # # # # # # #
# fix stuff in aliases file
export LS3=''
# emacs like editing at bash promt
# <C-x><C-e> opens command in vim
        set -o emacs
        #set -o vi

# prompt
        # base layout:
        # PS1='[\u@\H \W]\$'
        # \e[37;40m equals 'white on black'
        # \e[32;40m equals 'green on black'
        # but background color can be omitted
        # when using 1m font will be bold
        # and further all non-printing chars (not part of base layout)
        # should be enveloped in '\[ \]'...
        # ... if it is not, strange errors may occur:
        # deleting the prompt with backspace after having typed something?
        # afterwards use '\[\e[0m\]' to reset things for following line...
        # 31 = red
        # 32 = green
        # 33 = yellow
        # 36 = cyan

        PS1='\[\e[31;1m\][\[\e[37;1m\]\u\[\e[33;1m\]@\[\e[37;1m\]\H \[\e[32;1m\]\w\[\e[31;1m\]]\[\e[36;1m\]\$ \[\e[0m\]'

        export PS1="$PS1"
# # # # # # # # # # # # # # # # # # #

#some helpful env vars
        export PAGER='less'
        export EDITOR=vim
        export VISUAL=vim

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
