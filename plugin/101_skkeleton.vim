
call skkeleton#config({ 'globalJisyo': '~/.config/skk/SKK-JISYO.L'})
call skkeleton#config({'eggLikeNewline':v:true})

imap <C-j> <Plug>(skkeleton-enable)
cmap <C-j> <Plug>(skkeketon-enable)

