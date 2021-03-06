if [ -x "/usr/local/Library" ]; then

  if [ -n "$BASH" ]; then
    shopt -s nullglob
    for file in /usr/local/etc/bash_completion.d/*; do
      [ -f "$file" ] && source "$file" 2>/dev/null
    done
    shopt -u nullglob
    unset file

    source /usr/local/Library/Contributions/brew_bash_completion.sh

  elif [ -n "$ZSH_VERSION" ]; then
    # source /usr/local/Library/Contributions/brew_zsh_completion.zsh
    site_fn="/usr/local/share/zsh/site-functions"
    [[ -z ${fpath[(r)$site_fn]} ]] && fpath=($site_fn $fpath)

  fi
fi
