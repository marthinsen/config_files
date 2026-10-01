# Settings that only apply when running under WSL. Sourced by oh-my-bash from its custom folder.
if [ -n "$WSL_DISTRO_NAME" ]; then
  # WSLg has no server-side window decorations, so Qt Wayland apps get a borderless
  # frame by default. The Adwaita decoration draws a visible border.
  export QT_WAYLAND_DECORATION=adwaita
fi
