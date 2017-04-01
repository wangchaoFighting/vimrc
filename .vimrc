"""""""""""""""""""vundle 配置"""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar' 
Plugin 'jiangmiao/auto-pairs'
"Plugin 'minibufexpl.vim'
Plugin 'bling/vim-airline'
Bundle "altercation/vim-colors-solarized"
Bundle "tomasr/molokai"
call vundle#end()
filetype plugin indent on

"""""""""""""""""""""通用配置""""""""""""""""""""""""""
set nu			" 显示行号
syntax on		" 语法高亮
set showcmd		" 输入的命令显示出来，看的清楚些  
set autoindent		" vim使用自动对齐，也就是把当前行的对齐格式应用到下一行
set smartindent		" 依据上面的对齐格式，只能的选择对齐方式
colorscheme solarized	" 设置颜色主题
set background=dark
set shiftwidth=4	" Tab is 4 spaces wide
set softtabstop=4	" count 4 spaces as tab 
set laststatus=2	" Always show statusline
set hlsearch		" 搜索高亮显示
set incsearch		" 不用按回车就开始匹配
set showmatch		" 高亮显示对应的括号
set matchtime=5		" 对应括号高亮时间(单位是十分之一秒)
set cursorline		" 突出显示当前行
set ignorecase		" 搜索忽略大小写
filetype on		" 打开文件类型检测功能
let mapleader = ","	" 设置leader,
set vb t_vb=		" 状态栏显示光标位置状态行
set guifont=Courier\ New:h13
nnoremap <C-tab>   :bn<CR>  
nnoremap <C-s-tab> :bp<CR>
if has("gui_running")
    set guioptions-=m  " remove menu bar
    set guioptions-=T  " remove toolbar
    set guioptions-=r  " remove right-hand scroll bar
    set guioptions-=l  " remove left-hand scroll bar
    set guioptions-=L  " remove left-hand scroll bar even if there is a vertical split
    set guioptions-=b  " remove bottom scroll bar
endif
"""""""""""""""""""""""YCM配置"""""""""""""""""""""""""
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0			    " 关闭加载.ycm_extra_conf.py提示
let g:ycm_min_num_of_chars_for_completion=2	    " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0			    " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	    " 语法关键字补全
let g:ycm_complete_in_comments = 1		    " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1		    " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0  "注释和字符串中的文字也会被收入补全
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>lo :lopen<CR> "open locationlist
nnoremap <leader>lc :lclose<CR>   "close locationlist
inoremap <leader><leader> <C-x><C-o>"
inoremap <leader><leader> <C-x><C-o>
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" let g:ycm_key_list_previous_completion = '<C-S-Space>'
let g:ycm_key_invoke_completion = '<C-S-Space>'
let g:ycm_goto_buffer_command = 'vertical-split'   " 'same-buffer' 'new-tab''vertical-split'

"""""""""""""""""""""NERDTREE""""""""""""""""""""""""""
"let NERDTreeQuitOnOpen=1              "打开文件时关闭树
let NERDTreeShowBookmarks=1           "显示书签
map <leader>ne :NERDTreeToggle<CR>
map <leader>tl :TlistToggle<cr>
nnoremap <leader>ma :set mouse=a<cr>
nnoremap <leader>mu :set mouse=<cr>

""""""""""""""""""""""TagBar"""""""""""""""""""""""""""
nmap <leader>tb :TagbarToggle<CR>

"""""""""""""""""""miniBuffer""""""""""""""""""""""""""
"let g:miniBufExplMapWindowNavVim = 1 
"let g:miniBufExplMapWindowNavArrows = 1 
"let g:miniBufExplMapCTabSwitchBufs = 1

"""""""""""""""""AirLine""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!' " 关闭状态显示空白符号计数
