import pack-man

function pack/is_installed() {
  local pkg="$1"
  local path=$(command -v "$pkg")
  local status=$?

  if [ $status -eq 0 ]; then
    if [ -e "$path" ]; then
      return 0
    fi
  fi

  return 1
}

function pack/ensure() {
  local pkg="$1"
  
  if ! is_installed $pkg; then
    pack-man install $pkg
  fi
}