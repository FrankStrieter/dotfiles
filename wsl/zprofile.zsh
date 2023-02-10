if grep --quiet microsoft /proc/version 2>/dev/null; then
  [[ "$(umask)" == '000' ]] && umask 022

  # https://github.com/Microsoft/BashOnWindows/issues/1887
  unsetopt BG_NICE

  sudo mount --all
 
fi
