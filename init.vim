"Setting env
let g:HOME = $USERPROFILE
let g:XDG_COFIG_HOME=$HOME . '\.config\'
let g:XDG_CACHE_HOME=$TMP . '\neovim\'
let g:XDG_DATA_HOME=$HOME . '\.local\'


"Setting KeyConfig
"
"""Change <Leader>
let g:mapleader = ','

""Cursol move
set whichwrap=b,s,h,l,<,>,[,],~

nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

""move to other Windows
"http://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca
nnoremap s <Nop>
"s+hjkl move to window
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
"s+nptT move to tab
nnoremap sn gt
nnoremap sp gT
nnoremap st :<C-u>tabnew<CR>
"s+sv split window
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
"s+qQ kill buffer or window
nnoremap sQ :<C-u>q<CR>
nnoremap sq :<C-u>bd<CR>

""ESC in insert-mode
inoremap jj <ESC>

""No hlsearch with ESC-ESC
nnoremap <ESC><ESC> :<C-u>set nohlsearch!<CR>

