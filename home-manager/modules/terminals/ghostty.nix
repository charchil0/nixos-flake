{ ... }: {

  home.file = {
    ".config/ghostty/config".text = ''
      font-family = "CaskaydiaCove Nerd Font Mono"
      #font-family = "Maple Mono NF Regular"
      font-family-italic = "Maple Mono NF Regular"
      font-family-bold = "Maple Mono NF Regular"
      font-family-bold-italic = "Maple Mono NF Regular"
      font-size = 14
      adjust-underline-position = 4
      cursor-invert-fg-bg = false
      background-opacity = 0.7
      window-theme = dark
      gtk-single-instance = true
      gtk-tabs-location = bottom
      gtk-wide-tabs = false
      window-padding-y = 2,0
      window-decoration = false
      window-padding-balance = true
      shell-integration-features = no-cursor,sudo,no-title
      scrollback-limit = 100_000_000
      cursor-style-blink = false
      #theme = Peppermint
      #theme = darkermatrix
      theme = darkmatrix
      #theme = Builtin Pastel Dark
      #theme = embers-dark
      #theme = zenbones_dark
      #custom-shader = shaders/just-snow.glsl
      clipboard-read = allow
      clipboard-write = allow
      shell-integration = zsh
      adjust-cursor-thickness = 0
      adjust-box-thickness = 1
      cursor-opacity = 1
      cursor-style= block_hollow
      adjust-cursor-height = 1
      #foreground=#a5b6cf
      confirm-close-surface = false
      quick-terminal-animation-duration = 0
      bold-is-bright = false
    '';
  };

}
