local wezterm = require 'wezterm';

return {
    default_prog = {'pwsh.exe'},
    font = wezterm.font("Cica"),
    font_size = 14.0,
    use_ime = true,
    color_scheme = "Solarized Dracula",
    window_background_opacity = 0.8,
    text_background_opacity = 0.7,
    window_decorations = "RESIZE",

    image_shrink_ratio = 0.5,
    enable_image_preview = true,
}
