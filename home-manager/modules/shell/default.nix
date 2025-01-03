{ ... }:
{
  imports = [
    ./zsh.nix
    ./zsh_alias.nix
    #./zsh_keybinds.nix
  ];

  home.file.".p10k.zsh".source = ./.p10k.zsh;

}
