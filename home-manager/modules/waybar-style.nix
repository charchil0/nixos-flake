{ config, lib, pkgs, ... }:
let
  customConfig = {
    "top" = {
      "position" = "bottom";
      "mod" = "dock";
      "height" = 28;
      "exclusive" = true;
      "passthrough" = false;
      "gtk-layer-shell" = true;
      "reload_style_on_change" = true;
    };

    modulesLeft = [
      "custom/l_end"
      "cpu"
      "memory"
      "custom/cpuinfo"
      "custom/r_end"
      "custom/l_end"
      "idle_inhibitor"
      "clock"
      "custom/r_end"
      "custom/l_end"
      "hyprland/workspaces"
      "custom/r_end"
    ];

    modulesCenter = [
      "custom/padd"
      "custom/l_end"
      "hyprland/window"
      "custom/r_end"
      "custom/padd"
    ];

    modulesRight = [
      "custom/l_end"
      "backlight"
      "pulseaudio"
      "custom/r_end"
      "custom/l_end"
      "network"
      "tray"
      "battery"
      "custom/r_end"
    ];

    network = {
      onClick = "pkill .nm-applet-wrap || nm-applet";
    };

    cpu = {
      interval = 10;
      format = "󰍛 {usage}%";
      rotate = 0;
      formatAlt = "{icon0}{icon1}{icon2}{icon3}";
      formatIcons = [ "▁" "▂" "▃" "▄" "▅" "▆" "▇" "█" ];
    };

    memory = {
      states = {
        "c" = 90;
        "h" = 60;
        "m" = 30;
      };
      interval = 30;
      format = "󰾆 {used}GB";
      rotate = 0;
      formatM = "󰾅 {used}GB";
      formatH = "󰓅 {used}GB";
      formatC = " {used}GB";
      formatAlt = "󰾆 {percentage}%";
      maxLength = 10;
      tooltip = true;
      tooltipFormat = "󰾆 {percentage}%\n {used:0.1f}GB/{total:0.1f}GB";
    };

    idleInhibitor = {
      format = "{icon}";
      rotate = 0;
      formatIcons = {
        activated = "󰥔";
        deactivated = "";
      };
    };

    clock = {
      format = "{:%I:%M %p}";
      rotate = 0;
      formatAlt = "{:%R 󰃭 %d·%m·%y}";
      tooltipFormat = "<tt>{calendar}</tt>";
      calendar = {
        mode = "month";
        modeMonCol = 3;
        onScroll = 1;
        onClickRight = "mode";
        format = {
          months = "<span color='#ffead3'><b>{}</b></span>";
          weekdays = "<span color='#ffcc66'><b>{}</b></span>";
          today = "<span color='#ff6699'><b>{}</b></span>";
        };
      };
      actions = {
        onClickRight = "mode";
        onClickForward = "tz_up";
        onClickBackward = "tz_down";
        onScrollUp = "shift_up";
        onScrollDown = "shift_down";
      };
    };

    hyprlandWorkspaces = {
      rotate = 0;
      allOutputs = true;
      activeOnly = false;
      onClick = "activate";
      disableScroll = false;
      onScrollUp = "hyprctl dispatch workspace -1";
      onScrollDown = "hyprctl dispatch workspace +1";
      persistentWorkspaces = { };
    };

    hyprlandWindow = {
      format = "  {}";
      rotate = 0;
      separateOutputs = true;
      rewrite = {
        "viola@viole:(.*)" = "$1 ";
        "(.*) — Mozilla Firefox" = "$1 󰈹";
        "(.*)Mozilla Firefox" = "Firefox 󰈹";
        "(.*) - Visual Studio Code" = "$1 󰨞";
        "(.*)Visual Studio Code" = "Code 󰨞";
        "(.*) — Dolphin" = "$1 󰉋";
        "(.*)Spotify" = "Spotify 󰓇";
        "(.*)Steam" = "Steam 󰓓";
      };
      maxLength = 1000;
    };

    backlight = {
      device = "intel_backlight";
      rotate = 0;
      format = "{icon} {percent}%";
      formatIcons = [ "" "" "" "" "" "" "" "" "" ];
      onScrollUp = "brightnessctl set 5%+";
      onScrollDown = "brightnessctl set 5%-";
      minLength = 6;
    };

    pulseaudio = {
      format = "{icon} {volume}";
      rotate = 0;
      formatMuted = "婢";
      onClick = "pavucontrol -t 3";
      onClickMiddle = "volumecontrol.sh -o m";
      onScrollUp = "volumecontrol.sh -o i";
      onScrollDown = "volumecontrol.sh -o d";
      tooltipFormat = "{icon} {desc} // {volume}%";
      scrollStep = 5;
      formatIcons = {
        headphone = "";
        "hands-free" = "";
        headset = "";
        phone = "";
        portable = "";
        car = "";
        default = [ "" "" "" ];
      };
    };

    tray = {
      iconSize = 10;
      showPassiveItems = false;
      rotate = 0;
      spacing = 0;
    };

    battery = {
      format = "{icon}{capacity}%";
      formatCharging = "{capacity}%";
      formatPlugged = "{capacity}%";
      formatAlt = "{time}{icon}";
    };

    customLend = {
      format = " ";
      interval = "once";
      tooltip = false;
    };

    customRend = {
      format = " ";
      interval = "once";
      tooltip = false;
    };

    customSlend = {
      format = " ";
      interval = "once";
      tooltip = false;
    };

    customSrend = {
      format = " ";
      interval = "once";
      tooltip = false;
    };

    customRlend = {
      format = " ";
      interval = "once";
      tooltip = false;
    };

    customRrend = {
      format = " ";
      interval = "once";
      tooltip = false;
    };

    customPadd = {
      format = "  ";
      interval = "once";
      tooltip = false;
    };
  };
in
{

  programs.waybar.enable = true;
  programs.waybar.package = pkgs.waybar;
  programs.waybar.settings.mainBar =   {
    position = "bottom";
    layer = "top";
    height = 28;
    marginTop = 0;
    marginBottom = 0;
    marginLeft = 0;
    marginRight = 0;
    modulesLeft = [
      "custom/l_end"
      "cpu"
      "memory"
      "custom/cpuinfo"
      "custom/r_end"
      "custom/l_end"
      "idle_inhibitor"
      "clock"
      "custom/r_end"
      "custom/l_end"
      "hyprland/workspaces"
      "custom/r_end"
    ];

    modulesCenter = [
      "custom/padd"
      "custom/l_end"
      "hyprland/window"
      "custom/r_end"
      "custom/padd"
    ];

    modulesRight = [
      "custom/l_end"
      "backlight"
      "pulseaudio"
      "custom/r_end"
      "custom/l_end"
      "network"
      "tray"
      "battery"
      "custom/r_end"
    ];

    network = {
      onClick = "pkill .nm-applet-wrap || nm-applet";
    };

    cpu = {
      interval = 10;
      format = "󰍛 {usage}%";
      rotate = 0;
      formatAlt = "{icon0}{icon1}{icon2}{icon3}";
      formatIcons = [ "▁" "▂" "▃" "▄" "▅" "▆" "▇" "█" ];
    };

    memory = {
      states = {
        "c" = 90;
        "h" = 60;
        "m" = 30;
      };
      interval = 30;
      format = "󰾆 {used}GB";
      rotate = 0;
      formatM = "󰾅 {used}GB";
      formatH = "󰓅 {used}GB";
      formatC = " {used}GB";
      formatAlt = "󰾆 {percentage}%";
      maxLength = 10;
      tooltip = true;
      tooltipFormat = "󰾆 {percentage}%\n {used:0.1f}GB/{total:0.1f}GB";
    };

    idleInhibitor = {
      format = "{icon}";
      rotate = 0;
      formatIcons = {
        activated = "󰥔";
        deactivated = "";
      };
    };

    clock = {
      format = "{:%I:%M %p}";
      rotate = 0;
      formatAlt = "{:%R 󰃭 %d·%m·%y}";
      tooltipFormat = "<tt>{calendar}</tt>";
      calendar = {
        mode = "month";
        modeMonCol = 3;
        onScroll = 1;
        onClickRight = "mode";
        format = {
          months = "<span color='#ffead3'><b>{}</b></span>";
          weekdays = "<span color='#ffcc66'><b>{}</b></span>";
          today = "<span color='#ff6699'><b>{}</b></span>";
        };
      };
      actions = {
        onClickRight = "mode";
        onClickForward = "tz_up";
        onClickBackward = "tz_down";
        onScrollUp = "shift_up";
        onScrollDown = "shift_down";
      };
    };

    hyprlandWorkspaces = {
      rotate = 0;
      allOutputs = true;
      activeOnly = false;
      onClick = "activate";
      disableScroll = false;
      onScrollUp = "hyprctl dispatch workspace -1";
      onScrollDown = "hyprctl dispatch workspace +1";
      persistentWorkspaces = { };
    };

    hyprlandWindow = {
      format = "  {}";
      rotate = 0;
      separateOutputs = true;
      rewrite = {
        "viola@viole:(.*)" = "$1 ";
        "(.*) — Mozilla Firefox" = "$1 󰈹";
        "(.*)Mozilla Firefox" = "Firefox 󰈹";
        "(.*) - Visual Studio Code" = "$1 󰨞";
        "(.*)Visual Studio Code" = "Code 󰨞";
        "(.*) — Dolphin" = "$1 󰉋";
        "(.*)Spotify" = "Spotify 󰓇";
        "(.*)Steam" = "Steam 󰓓";
      };
      maxLength = 1000;
    };

    backlight = {
      device = "intel_backlight";
      rotate = 0;
      format = "{icon} {percent}%";
      formatIcons = [ "" "" "" "" "" "" "" "" "" ];
      onScrollUp = "brightnessctl set 5%+";
      onScrollDown = "brightnessctl set 5%-";
      minLength = 6;
    };

    pulseaudio = {
      format = "{icon} {volume}";
      rotate = 0;
      formatMuted = "婢";
      onClick = "pavucontrol -t 3";
      onClickMiddle = "volumecontrol.sh -o m";
      onScrollUp = "volumecontrol.sh -o i";
      onScrollDown = "volumecontrol.sh -o d";
      tooltipFormat = "{icon} {desc} // {volume}%";
      scrollStep = 5;
      formatIcons = {
        headphone = "";
        "hands-free" = "";
        headset = "";
        phone = "";
        portable = "";
        car = "";
        default = [ "" "" "" ];
      };
    };

    tray = {
      iconSize = 10;
      showPassiveItems = false;
      rotate = 0;
      spacing = 0;
    };

    battery = {
      format = "{icon}{capacity}%";
      formatCharging = "{capacity}%";
      formatPlugged = "{capacity}%";
      formatAlt = "{time}{icon}";
    };

    customLend = {
      format = " ";
      interval = "once";
      tooltip = false;
    };

    customRend = {
      format = " ";
      interval = "once";
      tooltip = false;
    };

    customSlend = {
      format = " ";
      interval = "once";
      tooltip = false;
    };

    customSrend = {
      format = " ";
      interval = "once";
      tooltip = false;
    };

    customRlend = {
      format = " ";
      interval = "once";
      tooltip = false;
    };

    customRrend = {
      format = " ";
      interval = "once";
      tooltip = false;
    };

    customPadd = {
      format = "  ";
      interval = "once";
      tooltip = false;
    };
  };


programs.waybar.style = 
''
* {
  border: none;
  border-radius: 0px;
  font-family: "JetBrainsMono Nerd Font";
  font-weight: bold;
  font-size: 15px;
  min-height: 10px;
}

@define-color bar-bg rgba(31, 35, 40, 0.95);

@define-color main-bg #101419;
@define-color main-fg #93cee9;

@define-color wb-act-bg #93cee9;
@define-color wb-act-fg #1f2328;

@define-color wb-hvr-bg #93cee9;
@define-color wb-hvr-fg #1f2328;

window#waybar {
  background: @bar-bg;
}

tooltip {
  background: @main-bg;
  color: @main-fg;
  border-radius: 7px;
  border-width: 0px;
}

#workspaces button {
  box-shadow: none;
  text-shadow: none;
  padding: 0px;
  border-radius: 8px;
  margin-top: 2px;
  margin-bottom: 2px;
  margin-left: 0px;
  padding-left: 2px;
  padding-right: 2px;
  margin-right: 0px;
  color: @main-fg;
  animation: ws_normal 20s ease-in-out 1;
}

#workspaces button.active {
  background: @wb-act-bg;
  color: @wb-act-fg;
  margin-left: 2px;
  padding-left: 11px;
  padding-right: 11px;
  margin-right: 2px;
  animation: ws_active 20s ease-in-out 1;
  transition: all 0.4s cubic-bezier(0.55, -0.68, 0.48, 1.682);
}

#workspaces button:hover {
  background: @wb-hvr-bg;
  color: @wb-hvr-fg;
  animation: ws_hover 20s ease-in-out 1;
  transition: all 0.3s cubic-bezier(0.55, -0.68, 0.48, 1.682);
}

#taskbar button {
  box-shadow: none;
  text-shadow: none;
  padding: 0px;
  border-radius: 8px;
  margin-top: 2px;
  margin-bottom: 2px;
  margin-left: 0px;
  padding-left: 2px;
  padding-right: 2px;
  margin-right: 0px;
  color: @wb-color;
  animation: tb_normal 20s ease-in-out 1;
}

#taskbar button.active {
  background: @wb-act-bg;
  color: @wb-act-color;
  margin-left: 2px;
  padding-left: 11px;
  padding-right: 11px;
  margin-right: 2px;
  animation: tb_active 20s ease-in-out 1;
  transition: all 0.4s cubic-bezier(0.55, -0.68, 0.48, 1.682);
}

#taskbar button:hover {
  background: @wb-hvr-bg;
  color: @wb-hvr-color;
  animation: tb_hover 20s ease-in-out 1;
  transition: all 0.3s cubic-bezier(0.55, -0.68, 0.48, 1.682);
}

#tray menu * {
  min-height: 10px;
}

#tray menu separator {
  min-height: 2px;
}

#backlight,
#battery,
#bluetooth,
#custom-cliphist,
#clock,
#cpu,
#custom-cpuinfo,
#custom-gpuinfo,
#idle_inhibitor,
#custom-keybindhint,
#language,
#memory,
#mpris,
#network,
#custom-notifications,
#custom-power,
#pulseaudio,
#custom-spotify,
#taskbar,
#custom-theme,
#tray,
#custom-updates,
#custom-wallchange,
#custom-wbar,
#window,
#workspaces,
#custom-l_end,
#custom-r_end,
#custom-sl_end,
#custom-sr_end,
#custom-rl_end,
#custom-rr_end {
  color: @main-fg;
  background: @main-bg;
  opacity: 1;
  margin: 3px 0px 3px 0px;
  padding-left: 4px;
  padding-right: 13px;
}

#workspaces,
#taskbar {
  padding: 0px;
}

#custom-r_end {
  border-radius: 0px 19px 19px 0px;
  margin-right: 8px;
  padding-right: 0px;
}

#custom-l_end {
  border-radius: 19px 0px 0px 19px;
  margin-left: 8px;
  padding-left: 0px;
}

#custom-sr_end {
  border-radius: 0px;
  margin-right: 8px;
  padding-right: 0px;
}

#custom-sl_end {
  border-radius: 0px;
  margin-left: 8px;
  padding-left: 0px;
}

#custom-rr_end {
  border-radius: 0px 7px 7px 0px;
  margin-right: 8px;
  padding-right: 0px;
}

#custom-rl_end {
  border-radius: 7px 0px 0px 7px;
  margin-left: 8px;
  padding-left: 0px;
}
'';

}
