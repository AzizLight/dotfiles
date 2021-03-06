gi() {
  if [[ "$1" == "list" ]]; then
    local maxColumns=1
    local calculatedColumns=$(echo "$COLUMNS / 45" | bc)
    local columns=$(($calculatedColumns > $maxColumns ? $calculatedColumns : $maxColumns))
    local maxWidth=120
    local calculatedWidth=$(echo "$COLUMNS / 1.2" | bc)
    local width=$(($calculatedWidth > $maxWidth ? $calculatedWidth : $maxWidth))

    curl -s "http://www.gitignore.io/api/$@" | tr "," "\n" | pr -$columns -t -w$width
  else
    curl -s "http://www.gitignore.io/api/$@"
  fi
}

gdd() {
  if [[ $# -eq 1 ]]; then
    command git diff-index --quiet HEAD -- || command clear; command git diff --patch-with-stat
  else
    command git diff-index --quiet HEAD -- || command clear; command git diff --patch-with-stat HEAD~$1
  fi
}
