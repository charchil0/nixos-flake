{ pkgs, ... }:
{
  # Enable Zsh

  programs.nix-your-shell = {
    enable = true;

  };
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    #promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";


    history = {
      append = true;
      extended = true;
      share = true;
      size = 10000;
      path = "$HOME/.zsh_history";
      ignoreAllDups = true;
    };

    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
        #"sudo"
        "copyfile"
        "dirhistory"
        #"fast-syntax-highlighting"
      ];
    };

    # Configure the prompt theme with Oh My Posh
    # initExtra = ''
    #  eval "$($HOME/.local/bin/oh-my-posh init zsh --config $HOME/dotfiles/oh-my-posh/themes/negligible.omp.json)"
    # '';

    # Environment variables and shell settings
  };


  # home.sessionVariables = {
  #   GEM_HOME = "$HOME/.gem";
  #   MANPAGER = "nvim +Man!";
  #   EDITOR = "nvim";
  # };

  programs.oh-my-posh = {
    enable = false;
    enableZshIntegration = false;
    #useTheme = "negligible";
  };

  # Define functions in your configuration directly in .zshrc
  home.file = {
    ".zshrc".text = ''


source $HOME/.local/share/bin/_zsh-completions


  #source $HOME/.config/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
   [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

      # Install packages from Nixpkgs Unstable (function niu)
      function niu() {
        package_list=""
        for arg in "$@"; do
          package_list+="nixos-unstable.$arg "
        done
        package_list=$(echo $package_list | xargs)
        eval nix-env -iA $package_list
      }

      # Install packages from Nixos (function ni)
      function ni() {
        package_list=""
        for arg in "$@"; do
          package_list+="nixos.$arg "
        done
        package_list=$(echo $package_list | xargs)
        eval nix-env -iA $package_list
      }

      # Remove packages (function nr)
      function nr(){
        package_list=""
        for arg in "$@"; do 
          package_list+="$arg "
        done
        package_list=$(echo $package_list | xargs)
        eval nix-env -e $package_list
      }

      # List installed packages (function nixl)
      function nixl(){
        nix-env -q
      }

      # Clone repositories (functions cgh, cg, cgd, cgdh)
      function cgh(){
        git clone $1
      }

      function cg(){
        git clone https://github.com/$1
      }

      function cgd(){
        git clone --depth 1 https://github.com/$1
      }

      function cgdh(){
        git clone --depth 1 $1
      }






      # Bun environment variables (if using Bun package manager)
      [ -s "/home/viola/.bun/_bun" ] && source "/home/viola/.bun/_bun"
      export BUN_INSTALL="$HOME/.bun"
      export PATH="$BUN_INSTALL/bin:$PATH"



# vim mode
bindkey -v
#export KEYTIMEOUT=3 



# Function to paste from the clipboard in normal mode
function vi-paste-clipboard() {
    local content=$(wl-paste) 
    LBUFFER+="$content" 
}

# Bind the function to the 'p' key in Vim mode
zle -N vi-paste-clipboard
#bindkey -M viins 'p' vi-paste-clipboard  # In insert mode
bindkey -M vicmd 'p' vi-paste-clipboard  # In command mode
#bindkey -M vicmd '^[[15~' vi-paste-clipboard

# Change cursor to a box in insert mode
zle -N zle-line-init
zle -N zle-keymap-select

function zle-line-init() {
  # Set the cursor to a box in insert mode
  echo -ne '\033[0 q'
}

function zle-keymap-select() {
  if [[ $KEYMAP == vicmd ]]; then
    # Set cursor to a block (box) in normal mode
    echo -ne '\033[2 q'
  else
    # Set cursor to a box in insert mode
    echo -ne '\033[0 q'
  fi
}

    '';
  };

  # Enable FZF
  programs.fzf = {
    enable = true;
    #keybindings = true;
    #fuzzyCompletion = true;
  };

  programs.zoxide = {
    enable = true;
  };

  # Enable Home Manager to manage shell environment
  home.packages = with pkgs;[
    zsh
    zsh-autosuggestions
    zsh-syntax-highlighting
    fd
    nix-zsh-completions
  ];

  # Enable bash completion (optional for other programs like `bun`, etc.)
  programs.bash.enableCompletion = true;
}
