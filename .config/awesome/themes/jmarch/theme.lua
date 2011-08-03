-------------------------------
--  "Zenburn" awesome theme  --
--    By Adrian C. (anrxc)   --
-------------------------------

-- Alternative icon sets and widget icons:
--  * http://awesome.naquadah.org/wiki/Nice_Icons

home = os.getenv('HOME')
themeDir = home .. "/.config/awesome/themes/jmarch/"
--wallpaper = themeDir .. "background/portal-lie.png"
wallpaper = themeDir .. "background/fox-hound.jpg"
-- {{{ Main
theme = {}
theme.wallpaper_cmd = { "awsetbg " .. wallpaper }
-- }}}

-- {{{ Styles
theme.font      = "sans 8"

-- {{{ Colors
theme.fg_normal = "#b8d4f9"--letter normal and not selected
theme.fg_focus  = "#0364e1"-- letter that are selected (tags...)
theme.fg_urgent = "#000000"
theme.bg_normal = "#121215"
theme.bg_focus  = "#1D1C19"
theme.bg_urgent = "#ffc0c0"
-- }}}

-- {{{ Borders
theme.border_width  = "1"
theme.border_normal = "#031d8b"
theme.border_focus  = theme.fg_focus
theme.border_marked = "#000000"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#3F3F3F"
theme.titlebar_bg_normal = "#3F3F3F"
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
theme.taglist_bg_focus = theme.fg_focus
theme.taglist_fg_focus = theme.bg_normal
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_bg_normal = "#101010ff"
theme.menu_bg_focus  = "#000000ff"
theme.menu_fg_normal = theme.fg_normal
theme.menu_fg_focus  = theme.fg_focus
theme.menu_border_width = "0"
theme.menu_height = "18"
theme.menu_width  = "150"
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = themeDir .. "taglist/squarefz.png"
theme.taglist_squares_unsel = themeDir .. "taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = themeDir .."awesome-icon.png"
theme.menu_submenu_icon      = "/usr/share/awesome/themes/default/submenu.png"
theme.tasklist_floating_icon = "/usr/share/awesome/themes/default/tasklist/floatingw.png"
-- }}}

-- {{{ Layout
layoutDir = themeDir .. "layouts/"
theme.layout_tile       = layoutDir .. "tile.png"
theme.layout_tileleft   = layoutDir .. "tileleft.png"
theme.layout_tilebottom = layoutDir .. "tilebottom.png"
theme.layout_tiletop    = layoutDir .. "tiletop.png"
theme.layout_fairv      = layoutDir .. "fairv.png"
theme.layout_fairh      = layoutDir .. "fairh.png"
theme.layout_spiral     = layoutDir .. "spiral.png"
theme.layout_dwindle    = layoutDir .. "dwindle.png"
theme.layout_max        = layoutDir .. "max.png"
theme.layout_fullscreen = layoutDir .. "fullscreen.png"
theme.layout_magnifier  = layoutDir .. "magnifier.png"
theme.layout_floating   = layoutDir .. "floating.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = themeDir .. "titlebar/close_focus.png"
theme.titlebar_close_button_normal = themeDir .. "titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active  = themeDir .. "titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = themeDir .. "titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = themeDir .. "titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = themeDir .. "titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = themeDir .. "titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = themeDir .. "titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = themeDir .. "titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = themeDir .. "titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = themeDir .. "titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = themeDir .. "titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = themeDir .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = themeDir .. "titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = themeDir .. "titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = themeDir .. "titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = themeDir .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = themeDir .. "titlebar/maximized_normal_inactive.png"
-- }}}

-- {{{ Icon
iconDir = home .. "/.config/awesome/icons/"
theme.cpu_icon = iconDir .. "cpu.png"
theme.ram_icon = iconDir .. "down.png"
theme.volume_icon = iconDir .. "vol.png"
theme.temp_icon = iconDir .. "temp.png"
theme.net_up_icon = iconDir .. "up.png"
theme.net_down_icon = iconDir .. "down.png"

return theme
