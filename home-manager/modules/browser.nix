{ pkgs, lib, specialArgs, ... }: {
  programs.firefox = {
    enable = true;

    policies = {

      DisableTelemetry = true;
      DisableFirefoxStudies = true;
      DontCheckDefaultBrowser = true;
      DisablePocket = true;
      SearchBar = "unified";
    };
    profiles = {
      default = {
        id = 0;
        name = "default";
        isDefault = true;

search.engines = {
        "du" = {
          urls = [{
            template = "https://duckduckgo.com/?q={searchTerms}";
          }];
        };
        "nix" = {
          urls = [{
            template = "https://search.nixos.org/packages?query={searchTerms}";
          }];
        };
      };



        settings = {
          #"browser.startup.homepage" = "https://youtube.com";
          "browser.search.defaultenginename" = "DuckDuckGo";
          "browser.search.order.1" = "DuckDuckGo";

          "signon.rememberSignons" = false;
          "widget.use-xdg-desktop-portal.file-picker" = 1;
          "browser.aboutConfig.showWarning" = true;
          "browser.compactmode.show" = true;
          "browser.cache.disk.enable" = false; # Be kind to hard drive

          "mousewheel.default.delta_multiplier_x" = 20;
          "mousewheel.default.delta_multiplier_y" = 20;
          "mousewheel.default.delta_multiplier_z" = 20;

          # Firefox 75+ remembers the last workspace it was opened on as part of its session management.
          # This is annoying, because I can have a blank workspace, click Firefox from the launcher, and
          # then have Firefox open on some other workspace.
          "widget.disable-workspace-management" = true;
        };
        search = {
          force = true;
          default = "DuckDuckGo";
          order = [ "DuckDuckGo" "Google" ];
        };
      };
    };
  };
}
