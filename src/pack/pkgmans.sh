PACKAGE_MANAGERS=(
  "apk" "apt" "pacman" "pkg" "yum" "dnf" "zypper" "brew" "emerge" "port" "nix"
)

function set-pkgman() {
  local pkgman="$1"

  case $pkgman in
    apk)
      PKGMAN_NAME="apk"
      PKGMAN_UPDATE="apk upgrade"
      PKGMAN_INSTALL="apk add"
      PKGMAN_UNINSTALL="apk del"
      ;;
    apt)
      PKGMAN_NAME="apt"
      PKGMAN_UPDATE="apt update && apt upgrade"
      PKGMAN_INSTALL="apt install"
      PKGMAN_UNINSTALL="apt remove"
      ;;
    pacman)
      PKGMAN_NAME="pacman"
      PKGMAN_UPDATE="pacman -Syu"
      PKGMAN_INSTALL="pacman -S"
      PKGMAN_UNINSTALL="pacman -R"
      ;;
    pkg)
      PKGMAN_NAME="pkg"
      PKGMAN_UPDATE="pkg update && apt upgrade"
      PKGMAN_INSTALL="pkg install"
      PKGMAN_UNINSTALL="pkg uninstall"
      ;;
    yum)
      PKGMAN_NAME="yum"
      PKGMAN_UPDATE="yum update"
      PKGMAN_INSTALL="yum install"
      PKGMAN_UNINSTALL="yum remove"
      ;;
    dnf)
      PKGMAN_NAME="dnf"
      PKGMAN_UPDATE="dnf update"
      PKGMAN_INSTALL="dnf install"
      PKGMAN_UNINSTALL="dnf remove"
      ;;
    zypper)
      PKGMAN_NAME="zypper"
      PKGMAN_UPDATE="zypper refresh"
      PKGMAN_INSTALL="zypper install"
      PKGMAN_UNINSTALL="zypper remove"
      ;;
    brew)
      PKGMAN_NAME="brew"
      PKGMAN_UPDATE="brew update && brew upgrade"
      PKGMAN_INSTALL="brew install"
      PKGMAN_UNINSTALL="brew uninstall"
      ;;
    emerge)
      PKGMAN_NAME="emerge"
      PKGMAN_UPDATE="emerge --sync"
      PKGMAN_INSTALL="emerge"
      PKGMAN_UNINSTALL="emerge --unmerge"
      ;;
    port)
      PKGMAN_NAME="port"
      PKGMAN_UPDATE="port selfupdate"
      PKGMAN_INSTALL="port install"
      PKGMAN_UNINSTALL="port uninstall"
      ;;
    nix)
      PKGMAN_NAME="nix"
      PKGMAN_UPDATE="nix-channel --update && nix-env -u"
      PKGMAN_INSTALL="nix-env -i"
      PKGMAN_UNINSTALL="nix-env -e"
      ;;
  esac
}

