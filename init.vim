

"" vim-plug
call plug#begin()
	Plug 'junegunn/vim-plug'
	Plug 'vim-denops/denops.vim'
	Plug 'vim-skk/skkeleton'
	Plug 'Shougo/ddc.vim'
	Plug 'Shougo/ddc-around' 	"sources
	Plug 'Shougo/ddc-matcher_head'	"filters
	Plug 'Shougo/ddc-sorter_rank' 	"filters
	Plug 'itchyny/lightline.vim'
call plug#end()

runtime! settings/*.vim


