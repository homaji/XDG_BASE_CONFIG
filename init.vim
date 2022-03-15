

"" vim-plug
call plug#begin()
	Plug 'junegunn/vim-plug'
	Plug 'vim-denops/denops.vim'
	Plug 'vim-skk/skkeleton'
	Plug 'Shougo/ddc.vim'
	Plug 'Shougo/ddc-matcher_head'
	Plug 'Shougo/ddc-sorter_rank'
call plug#end()

runtime! basic/*.vim
runtime! plugin/*.vim


