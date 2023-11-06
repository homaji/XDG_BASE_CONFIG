local status_ok, fvim = pcall(require, "g:fvim_loaded")
if not status_ok then
    return
end

vim.cmd([[
FVimFontAntialias v:true
FVimFontAutohint v:true
FVimFontHintLevel 'full'
FVimFontLigature v:true
FVimFontLineHeight '+1.25'
FFVimBackgroundOpacity 0.85      " value between 0 and 1, default bg opacity.
VimFontSubpixel v:true
]])
