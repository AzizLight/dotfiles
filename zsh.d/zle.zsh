# # expand-or-complete-or-list-files
# expand-or-complete-or-list-files() {
#   if [[ ${#BUFFER} == 0 ]]; then
#     BUFFER="ls "
#     CURSOR=3
#     zle list-choices
#     zle backward-kill-word
#   else
#     zle expand-or-complete
#   fi
# }
# zle -N expand-or-complete-or-list-files

# # bind to tab
# bindkey '^I' expand-or-complete-or-list-files
