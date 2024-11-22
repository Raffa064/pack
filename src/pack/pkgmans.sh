PACKAGE_MANAGERS=(
  "apk" "apt" "pacman" "pkg" "yum" "dnf" "zypper" "brew" "emerge" "port" "nix"
  "opkg" "snap" "flatpak" "portage" "guix" "pacapt" "rpm" "dpkg" "brew" "conda"
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
    opkg)
      PKGMAN_NAME="opkg"
      PKGMAN_UPDATE="opkg update"
      PKGMAN_INSTALL="opkg install"
      PKGMAN_UNINSTALL="opkg remove"
      ;;
    snap)
      PKGMAN_NAME="snap"
      PKGMAN_UPDATE="snap refresh"
      PKGMAN_INSTALL="snap install"
      PKGMAN_UNINSTALL="snap remove"
      ;;
    flatpak)
      PKGMAN_NAME="flatpak"
      PKGMAN_UPDATE="flatpak update"
      PKGMAN_INSTALL="flatpak install"
      PKGMAN_UNINSTALL="flatpak uninstall"
      ;;
    portage)
      PKGMAN_NAME="portage"
      PKGMAN_UPDATE="emerge --sync"
      PKGMAN_INSTALL="emerge"
      PKGMAN_UNINSTALL="emerge --unmerge"
      ;;
    guix)
      PKGMAN_NAME="guix"
      PKGMAN_UPDATE="guix pull"
      PKGMAN_INSTALL="guix package -i"
      PKGMAN_UNINSTALL="guix package -r"
      ;;
    pacapt)
      PKGMAN_NAME="pacapt"
      PKGMAN_UPDATE="pacapt update"
      PKGMAN_INSTALL="pacapt install"
      PKGMAN_UNINSTALL="pacapt remove"
      ;;
    rpm)
      PKGMAN_NAME="rpm"
      PKGMAN_UPDATE="rpm -Uvh"
      PKGMAN_INSTALL="rpm -ivh"
      PKGMAN_UNINSTALL="rpm -e"
      ;;
    dpkg)
      PKGMAN_NAME="dpkg"
      PKGMAN_UPDATE="dpkg --configure -a"
      PKGMAN_INSTALL="dpkg -i"
      PKGMAN_UNINSTALL="dpkg -r"
      ;;
    conda)
      PKGMAN_NAME="conda"
      PKGMAN_UPDATE="conda update"
      PKGMAN_INSTALL="conda install"
      PKGMAN_UNINSTALL="conda remove"
      ;;
  esac
}

