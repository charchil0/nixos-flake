{ ... }:
{

  programs.kitty.enable = true;
  programs.kitty.extraConfig = ''
        font_family      CaskaydiaCove Nerd Font Mono
        #font_family      Maple Mono NF Regular
    bold_font        Maple Mono NF Regular
    italic_font      Maple Mono NF Regular
        tab_bar_style hidden
        background_opacity .7


        font_size 13.5
        # window_padding_width 25
        include theme.conf
        hide_window_decorations yes
        confirm_os_window_close 0
        map ctrl+backspace send_text all \x17
        allow_remote_control yes
        enabled_layouts tall
        cursor_blink_interval 0
        copy_on_select yes
        scrollback_lines 2000
        scrollback_pager less --chop-long-lines --RAW-CONTROL-CHARS +INPUT_LINE_NUMBER
        mouse_map middle release ungrabbed paste_from_selection
        shell zsh





# #graphite mono
# # The basic colors
# foreground              #D9D9D9
# #background              #262626
# selection_foreground    #262626
# selection_background    #A6A6A6
#
# # Cursor colors
# cursor                  #A6A6A6
# cursor_text_color       #D9D9D9
#
# # URL underline color when hovering with mouse
# url_color               #D9D9D9
#
# # Kitty window border colors
# active_border_color     #595959
# inactive_border_color   #595959
# bell_border_color       #595959
#
# # OS Window titlebar colors
# wayland_titlebar_color system
# macos_titlebar_color system
#
# # Tab bar colors
# active_tab_foreground   #D9D9D9
# active_tab_background   #262626
# inactive_tab_foreground #D9D9D9
# inactive_tab_background #262626
# tab_bar_background      #D9D9D9
#
# # Colors for marks (marked text in the terminal)
# mark1_foreground #262626
# mark1_background #404040
# mark2_foreground #262626
# mark2_background #262626
# mark3_foreground #262626
# mark3_background #A6A6A6
#
# # The 16 terminal colors
#
# # black
# color0 #404040
# color8 #404040
#
# # red
# color1 #D9D9D9
# color9 #D9D9D9
#
# # green
# color2  #D9D9D9
# color10 #D9D9D9
#
# # yellow
# color3  #595959
# color11 #595959
#
# # blue
# color4  #A6A6A6
# color12 #A6A6A6
#
# # magenta
# color5  #A6A6A6
# color13 #A6A6A6
#
# # cyan
# color6  #A6A6A6
# color14 #A6A6A6
#
# # white
# color7  #D9D9D9
# color15 #D9D9D9

























# # gruvbox-dark colorscheme for kitty
# # snazzy theme used as base
#
# cursor                  #928374
# cursor_text_color       background
#
# visual_bell_color       #8ec07c
# bell_border_color       #8ec07c
#
# active_border_color     #d3869b
# inactive_border_color   #665c54
#
# active_tab_foreground   #fbf1c7
# active_tab_background   #665c54
# inactive_tab_foreground #a89984
# inactive_tab_background #3c3836
#
# foreground              #ebdbb2
# #background              #272727
# selection_foreground    #655b53
# selection_background    #ebdbb2
# url_color               #d65c0d
#
# # black
# color0   #272727
# color8   #928373
#
# # red
# color1   #cc231c
# color9   #fb4833
#
# # green
# color2   #989719
# color10  #b8ba25
#
# # yellow
# color3   #d79920
# color11  #fabc2e
#
# # blue
# color4  #448488
# color12 #83a597
#
# # magenta
# color5   #b16185
# color13  #d3859a
#
# # cyan
# color6   #689d69
# color14  #8ec07b
#
# # white
# color7   #a89983
# color15  #ebdbb2












        # #tokyonight
        # # themes
        # #foreground              #FFFFFF
        # #background              #070408
        # selection_foreground    #070408
        # selection_background    #FFFFFF
        # cursor                  #80516D 
        # cursor_text_color       #FFFFFF
        # active_tab_foreground     #070408
        # active_tab_background     #493154
        # inactive_tab_foreground   #493154
        # inactive_tab_background   #070408
        # # black
        # color0      #472952
        # color8      #81578F
        # # red
        # color1      #FFCCEA
        # color9      #F0AAD4
        # # green
        # color2      #DFCCFF
        # color10     #C5AAF0
        # # yellow
        # color3      #EFCCFF
        # color11     #DAAAF0
        # # blue
        # color4      #D39AE6
        # color12     #D39AE6
        # # magenta
        # color5      #B69AE6
        # color13     #B69AE6
        # # cyan
        # color6      #CE9AE6
        # color14     #CE9AE6
        # # white
        # color7      #FFCCEA
        # color15     #F0AAD4




        Decay Green
        #background #0d0f18
        foreground #a5b6cf
        # Black
        color0 #151720
        color8 #1c1e27
        # Red
        color1 #dd6777
        color9 #e26c7c
        # Green
        color4  #90ceaa
        color12 #95d3af
        # Yellow
        color3  #ecd3a0
        color11 #f1d8a5
        # Blue
        color2  #86aaec
        color10 #8baff1
        # Magenta
        color5  #c296eb
        color13 #c79bf0
        # Cyan
        color6  #93cee9
        color14 #98d3ee
        # White
        color7  #cbced3
        color15 #d0d3d8
        # Cursor
        cursor #cbced3
        cursor_text_color #a5b6cf
        # Selection highlight
        selection_foreground #a5b6cf
        selection_background #1c1e27





        # # vim:ft=kitty
        #
        # ## name: Tokyo Night
        # ## license: MIT
        # ## author: Folke Lemaitre
        # ## upstream: https://github.com/folke/tokyonight.nvim/raw/main/extras/kitty/tokyonight_night.conf
        #
        #
        # background #1a1b26
        # foreground #c0caf5
        # selection_background #283457
        # selection_foreground #c0caf5
        # url_color #73daca
        # cursor #c0caf5
        # cursor_text_color #1a1b26
        #
        # # Tabs
        # active_tab_background #7aa2f7
        # active_tab_foreground #16161e
        # inactive_tab_background #292e42
        # inactive_tab_foreground #545c7e
        # #tab_bar_background #15161e
        #
        # # Windows
        # active_border_color #7aa2f7
        # inactive_border_color #292e42
        #
        # # normal
        # color0 #15161e
        # color1 #f7768e
        # color2 #9ece6a
        # color3 #e0af68
        # color4 #7aa2f7
        # color5 #bb9af7
        # color6 #7dcfff
        # color7 #a9b1d6
        #
        # # bright
        # color8 #414868
        # color9 #f7768e
        # color10 #9ece6a
        # color11 #e0af68
        # color12 #7aa2f7
        # color13 #bb9af7
        # color14 #7dcfff
        # color15 #c0caf5
        #
        # # extended colors
        # color16 #ff9e64
        # color17 #db4b4b

  '';
}

