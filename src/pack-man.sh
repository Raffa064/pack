import pack.pkgmans

function pack-man() {
  local man_command="$1"
  shift

  man/set # detect package manager if necessary
  
  if declare -f "man/$man_command" >/dev/null; then
    eval "man/$man_command" $@
  else
    echo "Invalid command: $man_command"
    return -1
  fi
}

function man/set() {
  local pkg_manager="$1"

  if [ -z "$pkg_manager" ] || [ -z "$PKGMAN_NAME" ]; then
    local pkgman
    for pkgman in "${PACKAGE_MANAGERS[@]}"; do
      if pack/is_installed "$pkgman"; then
        pkg_manager="$pkgman"
        break
      fi
    done
  fi

  set-pkgman $pkg_manager 
}

function man/which() {
  echo "$PKGMAN_NAME"
} 

function man/update() {
  echo $PKGMAN_UPDATE $@
}

function man/install() {
  echo $PKGMAN_INSTALL $@
}

function man/uninstall() {
  echo $PKGMAN_UNISTALL $@
}
