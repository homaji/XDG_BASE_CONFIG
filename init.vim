let g:config_home = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME


"Dein Settings
"" dein.vilのディレクトリ
let s:dein_dir = g:config_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

"なければgit clone
if !isdirectory(s:dein_repo_dir)
	execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)

	" 管理するプラグインを記述したファイル
	let s:toml = g:config_home . '/nvim/dein.toml'
	let s:lazy_toml = g:config_home . '/nvim/dein_lazy.toml'
	call dein#load_toml(s:toml, {'lazy': 0})
	call dein#load_toml(s:lazy_toml, {'lazy': 1})
	call dein#end()
	call dein#save_state()
endif

" vimprocを最初にインストール
if has('vim_starting') && dein#check_install(['vimproc'])
	call dein#install(['vimproc'])
endif
" その他のプラグインをインストール
if has('vim_starting') && dein#check_install()
	call dein#install()
endif

let g:python3_host_prog = expand('~/.pyenv/versions/neovim3/bin/python')

"Key Config"""
""macvimではoption+\がleaderになるので変更
let g:mapleader = ','

""move to other Windows
""http://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca
nnoremap s <Nop>
"""s+hjkl move to window
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
"""s+nptT move to tab
nnoremap sn gt
nnoremap sp gT
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
"""s+sv split window
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
"""s+bB use Unite buffers
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>
nnoremap sf :<C-u>Unite file_mru<CR>
"""s+qQ kill buffer or window
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>

