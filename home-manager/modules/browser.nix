{ pkgs, ... }: {
  programs.firefox = {
    enable = true;
    package = pkgs.firefox.override { cfg.enableTridactylNative = true; };

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
          "nix" = {
            urls = [{
              template = "https://search.nixos.org/packages?query={searchTerms}";
            }];
            keyword = "nix";
          };
        };
        # extensions = with pkgs.nur.repos.rycee.firefox-addons; [
        #   buster-captcha-solver
        #   clearurls
        #   no-pdf-download
        #   react-devtools
        #   reduxdevtools
        #   translate-web-pages
        #   tridactyl
        #   ublock-origin
        # ];



        settings = {
          # Re-bind ctrl to super (would interfere with tridactyl otherwise)
          "ui.key.accelKey" = 17;
          "reader.parse-on-load.force-enabled" = true;
          "app.shield.optoutstudies.enabled" = false;
          "browser.bookmarks.restore_default_bookmarks" = true;
          "browser.contentblocking.category" = "strict";
          "browser.ctrlTab.recentlyUsedOrder" = true;
          "browser.discovery.enabled" = false;
          "browser.laterrun.enabled" = false;
          "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons" = false;
          "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features" = false;
          "browser.newtabpage.activity-stream.feeds.snippets" = false;
          "browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts.havePinned" = "";
          "browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts.searchEngines" = "";
          "browser.newtabpage.activity-stream.section.highlights.includePocket" = false;
          "browser.newtabpage.activity-stream.showSponsored" = false;
          "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
          "browser.newtabpage.pinned" = false;
          "browser.protections_panel.infoMessage.seen" = true;
          "browser.quitShortcut.disabled" = false;
          "browser.shell.checkDefaultBrowser" = false;
          "browser.ssb.enabled" = true;
          "browser.toolbars.bookmarks.visibility" = "never";
          "browser.urlbar.placeholderName" = "DuckDuckGo";
          "browser.urlbar.suggest.openpage" = false;
          "datareporting.policy.dataSubmissionEnable" = false;
          "datareporting.policy.dataSubmissionPolicyAcceptedVersion" = 2;
          "dom.security.https_only_mode" = true;
          "dom.security.https_only_mode_ever_enabled" = true;
          "extensions.getAddons.showPane" = false;
          "extensions.htmlaboutaddons.recommendations.enabled" = false;
          "extensions.pocket.enabled" = false;
          "identity.fxaccounts.enabled" = false;
          "privacy.trackingprotection.enabled" = true;
          "privacy.trackingprotection.socialtracking.enabled" = true;
          #"browser.startup.homepage" = "https://youtube.com";
          "app.update.auto" = false;
          "browser.search.defaultenginename" = "DuckDuckGo";
          "browser.search.order.1" = "DuckDuckGo";
          "signon.rememberSignons" = true;
          "widget.use-xdg-desktop-portal.file-picker" = 1;
          "browser.aboutConfig.showWarning" = true;
          "browser.compactmode.show" = true;
          "browser.cache.disk.enable" = false; # Be kind to hard drive
          "mousewheel.default.delta_multiplier_x" = 20;
          "mousewheel.default.delta_multiplier_y" = 20;
          "mousewheel.default.delta_multiplier_z" = 20;
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
