{ ... }: {
  programs.zsh.shellAliases = {
    grep = "grep --color=auto";
    update = "sudo nix-channel --update && sudo nixos-rebuild switch && home-manager switch";
    cls = "clear";
    rm = "rm -rf";
    cp = "cp -r";
    cs = "clear"; # clear terminal
    zshrc = "nvim ~/.zshrc";
    bashrc = "nvim ~/.bashrc";
    key = "nvim ~/.config/hypr/keybindings.conf";
    a = "nvim";
    sa = "sudo nvim";
    j = "z";
    s = "sudo";
    e = "exit";
    tar = "tar -xvf";
    ali = "nvim ~/.zshalias";
    reload = "source ~/.bashrc && clear";
    src = "source ~/.zshrc && cs";
    his = "nvim ~/.zsh_history";
    t = "tmux";
    tse = "~/.local/share/bin/tmux.sh";
    tco = "nvim ~/.config/tmux/tmux.conf";
    tns = "tmux new-session -s";
    tas = "tmux attach-session";
    tds = "tmux detach";
    tks = "tmux kill-session -t";
    sn = "sudo shutdown now";
    nvimsrc = "j ~/dotfiles/nvim/.config/nvim/lua/charchil/ && a .";
    n = "nvim .";
    lg = "lazygit";
    ghdir = "gh repo create \"$(basename \"$PWD\")\" --private --source=. --remote=origin";
    ghdirp = "gh repo create \"$(basename \"$PWD\")\" --public --source=. --remote=origin";
    memory = "echo \"valgrind --tool=massif <file_name>\\n ms_print massif.out.<pid> | nvim\"";
    hypr = "j ~/.config/hypr/ && cs";
    mx = "chmod +x";
    du = "du -sh";
    df = "df -h";
    nrb = "sudo nixos-rebuild switch";
    nixup = "nix-env -u";
    nixg = "nix-env --list-generations";
    nixclean = "nix-collect-garbage --delete-old";
    l = "eza -lh --icons=auto"; # long list
    ls = "lsd";
    ll = "eza -lha --icons=auto --sort=name --group-directories-first"; # long list all
    ld = "eza -lhD --icons=auto"; # long list dirs
    lt = "eza --icons=auto --tree"; # list folder as tree
    lhd = "ld .*";
    stop = "sudo systemctl stop";
    status = "sudo systemctl status";
    restart = "sudo systemctl restart";
    start = "sudo systemctl start";
    ".." = "cd ..";
    "..." = "cd ../..";
    ".3" = "cd ../../..";
    ".4" = "cd ../../../..";
    ".5" = "cd ../../../../..";
    mkdir = "mkdir -p";
    g = "j ~/repos";
    vb = "NVIM_APPNAME=LazyVim nvim";
    ghc = "gh repo clone";
    ghl = "gh repo list";
    project = "a ~/dotfiles/learn/contents/Project\ ideas.md";
    pc = "a ~/dotfiles/learn/contents/completed_projects.md";
    todo = "$HOME/repos/todos/make.sh && cs";
    srcgrub = "sudo grub-mkconfig -o /boot/grub/grub.cfg";
  };
}
