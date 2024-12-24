{config,pkgs,...}:{
  home.packages = with pkgs.nerd-fonts; [
    jetbrains-mono
    fira-code
    caskaydia-cove
    fantasque-sans-mono
  ];}
