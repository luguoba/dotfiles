if status is-login
  
  fish_add_path -p /home/icey/.local/bin/script /home/icey/.local/bin /home/icey/.npm/modules/bin

  set -x _ZO_DATA_DIR $HOME/.local/share 
  set -x _ZO_ECHO 1 
  set -x _ZO_RESOLVE_SYMLINKS 1 

  set -x npm_config_prefix '/home/icey/.npm/modules'

  set -x SXHKD_SHELL '/bin/sh'
  set -x MOZ_USE_XINPUT2 1
  set -x LIBVA_DRIVER_NAME iHD

  set -x EDITOR nvim
  set -x VISUAL nvim
  set -x PAGER nvimpager
  set -x DIFFPROG colordiff
  set -x BROWSER firefox

  if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
    exec startx -- vt1 &> /dev/null
  end
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    zoxide init --cmd cd fish | source
end
