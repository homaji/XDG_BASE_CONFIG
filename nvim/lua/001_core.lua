-- 表示
-- -番号表示
vim.opt.number = true
-- -特殊文字表示
vim.opt.list = true
vim.opt.listchars = {tab='>-', trail='*', nbsp='+'}
-- -エラー時の音を画面表示に
vim.opt.visualbell = true
-- -括弧の連携
vim.opt.showmatch = true
vim.opt.matchtime = 1
-- -ヘルプファイル
vim.opt.helplang = 'ja', 'en'
-- -ステータスバーを常時1か所だけ
vim.opt.laststatus = 3
-- -tabバーの表示
vim.opt.showtabline = 2
-- -GUIフォントの指定
--vim.opt.guifont='Cica:h14'
vim.opt.guifont='HackGen Console NF:h14:Bold'



-- 入力時
-- -インデントをC言語風に
vim.opt.smartindent = true
-- -タブ文字
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- 検索
-- -大文字無視
vim.opt.ignorecase = true
-- -大文字で検索したら区別をつける
vim.opt.smartcase = true
-- -検索が末尾までいったら先頭から検索
vim.opt.wrapscan = true

-- カーソル移動
-- - 行を跨いでの移動
vim.opt.whichwrap = 'b', 's', 'h', 'l', '<', '>', '[', ']'
-- - 削除時の対象 デフォルトで有効になっているので逆に設定しない方がいい
-- --vim.opt.backspace = 'start', 'eol', 'indent'

-- ファイル環境
-- 言語
vim.api.nvim_exec('language en_US', true) -- -フォーマット
vim.opt.fileformats = 'dos', 'unix', 'mac'
-- File type検出
vim.g.do_filetype_lua = 1

-- PYthon 設定
vim.g.python3_host_prog = "C:\\Users\\homaj\\AppData\\Local\\Programs\\Python\\python312\\python.exe"

-- クリップボード連携
--vim.opt.clipboard:append{"unnamedeplus"}
vim.opt.clipboard = 'unnamedplus'

-- マウス有効
vim.opt.mouse = 'a'

-- IME制御
-- zenhan.exeを使ってノーマルモードになったときに半角にする。
vim.cmd [[
    if executable('zenhan')
        autocmd InsertLeave * :call system('zenhan 0')
        autocmd CmdlineLeave * :call system('zenhan 0')
    endif
]]
