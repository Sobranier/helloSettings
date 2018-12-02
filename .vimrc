" ===============================================================================
" ======================================= 插件
" ===============================================================================
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
" 文件搜索 快速跳转
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug默认插件，统配设置，跨不同端
Plug 'tpope/vim-sensible'
" Plug默认插件，主题相关，不一定要装
Plug 'junegunn/seoul256.vim'
" 代码检测  TODO: 添加全局eslint?
Plug 'w0rp/ale'
" 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" 自动补全
Plug 'Valloric/YouCompleteMe'
" jsx 语法高亮
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" vue 语法高亮
Plug 'posva/vim-vue'
" 文件树，个人不怎么用
Plug 'scrooloose/nerdtree'
" wakatime
Plug 'wakatime/vim-wakatime'
" vim-surround 个人习惯手写封闭标签

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" ===============================================================================
" ======================================= 基本显示设置
" ===============================================================================

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~ 最基本
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 设置不兼容VI
set nocompatible
" 设置关闭缓存swap文件
set noswapfile
" 取消备份
set nobackup
" 保存80条历史记录
set history=80

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~ 行号与标尺
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 当前行显示下划线
set cursorline
highlight CursorLine ctermfg=green
" highlight CursorLine cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
" 当前列显示
set cursorcolumn
highlight CursorColumn ctermfg=green
" highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
" 显示行号
set number
" 右下角有行号显示，可能会和插件冲突
set ruler

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~  缩进
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 设置tab键的宽度
set tabstop=2
" 换行时行间交错使用2个空格
set shiftwidth=2
" 编辑插入tab时，把tab算作的空格数
set softtabstop=2
" 使用空格来替换tab
set expandtab
" 开启新行时使用智能 tab 缩进
set smarttab
" 设置自动缩进(即每行的缩进值与上一行相等)
set autoindent
" 设置智能缩进
set smartindent

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~  行控制
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 英文单词在换行时不被截断
set linebreak
" 设置自动折行
set wrap

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~  状态栏
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 状态栏带提示
set wildmenu
" 状态栏高度
" set cmdheight=3

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~  括号匹配
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 显示括号配对情况
set showmatch  
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" ===============================================================================
" ======================================= 增强配置
" ===============================================================================

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~  搜索
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 开启高亮显示结果
set hlsearch
" 开启实时搜索功能(输入字符串就跳到匹配位置)
set incsearch

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~  鼠标、退格键
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 设置退格键可用
set backspace=2             
" 鼠标点击变输入
set mouse=a
"光标可以定位在没有实际字符的地方
"set ve=block

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~  工作目录和剪贴板
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 共享外部剪贴板
set clipboard=unnamed
" 设定文件浏览器目录为当前目录
set autochdir

" ===============================================================================
" ======================================= 文件配置
" ===============================================================================

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~  文件类型相关
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 针对不同的文件类型采用不同的缩进格式
filetype indent on
" 针对不同的文件类型加载对应的插件
filetype plugin on
filetype plugin indent on
filetype on
" 缓冲编码
set encoding=utf-8
set fileencodings=utf-8,cp936,gb18030,big5,gbk,euc-jp,latin1
set fileencoding=utf-8
"编码转换
set termencoding=utf-8
" 将指定文件的换行符转换成 UNIX 格式
autocmd FileType php,javascript,html,css,python,vim,vimwiki set ff=unix

" ===============================================================================
" ======================================= 代码折叠与语法高亮
" ===============================================================================

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~  代码折叠
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Enables folding.
set foldenable
" 折叠方法  
" manual    手工折叠  
" indent    使用缩进表示折叠  
" expr      使用表达式定义折叠  
" syntax    使用语法定义折叠  
" diff      对没有更改的文本进行折叠  
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}} 
set foldmethod=marker
" 打开php折叠
let php_folding = 1
" 打开javascript折叠
let b:javascript_fold=1
" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~  语法高亮
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 打开语法高亮
syntax enable
" 开启文件类型侦测
syntax on

" ===============================================================================
" ======================================= 快捷键
" ===============================================================================

" visual模式修改缩进时不退出该模式
vnoremap < <gv
vnoremap > >gv

" tabn 快捷键
nmap <C-L> :tabnext<CR>
nmap <C-H> :tabprevious<CR>

" 是否显示行号
map <C-N> :set number!<CR>

" 开关nerdtree
map <C-M> :NERDTreeToggle<CR>

" 内容全选快捷键
map <C-a> gg0vG$<cr>

" Ctrl + C 选中状态下复制
vnoremap <C-c> "+y

" Ctrl + V 粘贴剪切板中的内容
map  <C-v> "+p
imap <C-v> <esc>"+pa
vmap <C-v> d"+P


" ===============================================================================
" ======================================= 自定义方法
" ===============================================================================

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~  快速git blame
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" visual mode, 选中的部分
function! GitBlame() range
  exec '!git blame -L '. line("'<"). ','. line("'>"). ' %'
endfunction
vnoremap <leader>g :call GitBlame()<CR>
" --------------------------------------
" normal mode, 当前行
nnoremap <leader>g :exec '!git blame -L '. line("."). ','. line("."). ' %'<CR>

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~ 打开文件时跳到最后光标所在的行
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
