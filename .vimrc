" required!
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'ervandew/supertab'
Bundle 'nvie/vim-flake8'
Bundle 'jmcantrell/vim-virtualenv'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'DfrankUtil'
Bundle 'vimprj'
Bundle 'indexer.tar.gz'
Bundle 'Tagbar'
Bundle 'SudoEdit.vim'
Bundle 'matchit.zip'
Bundle 'bufexplorer.zip'
Bundle 'project.tar.gz'
Bundle 'minibufexpl.vim'
Bundle 'jsbeautify'
Bundle 'grep.vim'
Bundle 'ZenCoding.vim'

 
 " non github repos
 "Bundle 'git://git.wincent.com/command-t.git'
 " ...

 filetype plugin indent on     " required!

" Включаем несовместимость настроек с Vi (ибо Vi нам и не понадобится).
set nocp

" Nopaste
set nopaste

" Показывать положение курсора всё время.
set ruler

" Показывать незавершённые команды в статусбаре
set showcmd

" Show the current mode
set showmode

" Включаем нумерацию строк
set nu

" Nocursorline
set nocursorline
set nocursorcolumn

" Folding
set foldcolumn=2
set foldenable
set foldmethod=indent
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы подняться в режиме редактирования
set scrolljump=7

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы опуститься в режиме редактирования
set scrolloff=7

" Поиск по набору текста (очень полезная функция)
set incsearch

set showmatch

" Включаем подсветку выражения, которое ищется в тексте
"set hlsearch
set nohlsearch

" Останавливать поиск при достижении конца файла
set nowrapscan

" Игнорировать регистр букв при поиске
set ignorecase

set lz

" Invisible Char's
set listchars=tab:·\·
set list

" Создание бэкапов
set backup
set writebackup

" Backup dir
set backupdir=~/.vim/bac

" Swap dir
set dir=~/.vim/swp

" Undo persistence
set undodir=~/.vim/undo
set undofile

" Включаем перенос строк
set wrap

" Перенос строк по словам, а не по буквам
set linebreak

set textwidth=0

" Список кодировок файлов для автоопределения
set fileencodings=utf-8,cp1251,koi8-r,cp866

" Включает виртуальный звонок (моргает, а не бибикает при ошибках)
set visualbell

" Не выгружать буфер, когда переключаемся на другой
set hidden

" Сделать строку команд высотой в одну строку
set ch=1

" Скрывать указатель мыши, когда печатаем
set mousehide

" Включить автоотступы
set autoindent

" Включаем "умные" отспупы ( например, автоотступ после {)
set smartindent

" Преобразование Таба в пробелы
set expandtab

" Размер табуляции по умолчанию
set shiftwidth=4
set softtabstop=4
set tabstop=8
set smarttab

" Отспупы в стиле C
set cin

" Влючить подстветку синтаксиса
syntax on

" Цветовая гамма
colorscheme desertEx

" allow to use backspace instead of "x"
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Gui Setting's

" Скрыть панель в gui версии ибо она не нужна
set guioptions-=T

" Убираем правый скрол
set guioptions-=r

" Убираем левый скрол
set guioptions-=l

" Убираем меню
set guioptions-=m

" Убираем меню
set guioptions-=M

" Убираем попап окна
set guioptions=c

set guioptions+=h

" Buffer's setting's

" Buffer's Navigation
map <C-H> <C-W>h
map <C-L> <C-W>l
map <C-J> <C-W>j
map <C-K> <C-W>k

" Reisze Buffer
map <C-F9>  :vertical resize -10<CR>
map <C-F10> :resize +10<CR>
map <C-F11> :resize -10<CR>
map <C-F12> :vertical resize +10<CR>

" Statusline Format
set statusline=
set statusline+=\ %f\ 
set statusline+=%r%m[buf=%n]%y[ff=%{&fileformat}][fenc=%{&fileencoding}][enc=%{&encoding}]
set statusline+=%<\ %{strftime(\"%A,\ %d.%m.%y\ %R\",getftime(expand(\"%:p\")))}
set statusline+=%k%=%-25.(ASCII=\%03.3b\ HEX=\%02.2B\ line=%l\(%L\),col=%v%)\ 
set statusline+=%P\ 

" Title String
set title titlestring=
set title titlestring+=\ %F\ %r%m\ #\ buf=%n\ #\ fileformat=%{&fileformat}\ #\ fileencoding=%{&fileencoding}\ #\ encoding=%{&encoding}

" laststatus
set laststatus=2

" Fix <Enter> for comment
set fo+=cr

" Опции сесссий
set sessionoptions=curdir,buffers

" Copy/Paste
vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

"" Plugins

" TagBar
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
let g:tagbar_autofocus = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_width = 30

" Matchit
let loaded_matchit = 1

" Project
let g:proj_window_increment = 30

"let g:indexer_disableCtagsWarning=1
"let g:indexer_enableWhenProjectDirFound=0
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l --fields=+iaS --extra=+q"

" Wild Menu
set wildmenu
set wildoptions=tagfile
set wcm=<Tab>

" Termencoding
set termencoding=utf-8

" Default file encoding
set encoding=utf8

" Menu setting's
set completeopt+=menu
set completeopt+=menuone
set completeopt-=preview

" Autocomplete

" Слова откуда будем завершать
set complete=""

" Из текущего буфера
set complete+=.

" Из словаря
set complete+=k

" Из других открытых буферов
set complete+=b

" из тегов
set complete+=t

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" Win size
"set columns=200
"set lines=1000

" по умолчанию - латинская раскладка
set iminsert=0
set imsearch=0

" Font
set guifont=Monaco:h12

" MySQL
autocmd BufRead *.sql set filetype=mysql

" Autocmd

" Восстановление фолдингов
set viewoptions=cursor,folds
au BufWinLeave *.* mkview
au BufWinEnter *.* silent loadview


" On jquery highlight
"au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" Python
au BufRead python set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
au BufWritePre python normal m`:%s/\s\+$//e ``
au BufRead,BufNewFile *.py syntax match Search /\%<84v.\%>80v/
au BufRead,BufNewFile *.py syntax match ErrorMsg /\%>83v.\+/
au BufWritePost *.py call Flake8()
"au BufWinEnter *.py let w:m1=matchadd('Search', '\%>80v.\+', -1)
"au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>79v.\+', -1)

" Complete for different filetype's
 set ofu=syntaxcomplete#Complete
au FileType python set omnifunc=pythoncomplete#Complete
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType smarty set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS
au FileType xml set omnifunc=xmlcomplete#CompleteTags



" --------------------
" OmniCppComplete
" --------------------
" set Ctrl+j in insert mode, like VS.Net
"imap <C-j> <C-X><C-O>
" :inoremap <expr> <CR> pumvisible() ? "\<c-y>" : "\<c-g>u\<CR>"
" set completeopt as don't show menu and preview
"set completeopt=menuone
" Popup menu hightLight Group
"highlight Pmenu ctermbg=13 guibg=LightGray
"highlight PmenuSel ctermbg=7 guibg=DarkBlue guifg=White
"highlight PmenuSbar ctermbg=7 guibg=DarkGray
"highlight PmenuThumb guibg=Black
" use global scope search
let OmniCpp_GlobalScopeSearch = 2
" 0 = namespaces disabled
" 1 = search namespaces in the current buffer
" 2 = search namespaces in the current buffer and in included files
let OmniCpp_NamespaceSearch = 1
" 0 = auto
" 1 = always show all members
let OmniCpp_DisplayMode = 1
" 0 = don't show scope in abbreviation
" 1 = show scope in abbreviation and remove the last column
let OmniCpp_ShowScopeInAbbr = 1
" This option allows to display the prototype of a function in the abbreviation part of the popup menu.
" 0 = don't display prototype in abbreviation
" 1 = display prototype in abbreviation
let OmniCpp_ShowPrototypeInAbbr = 1
" This option allows to show/hide the access information ('+', '#', '-') in the popup menu.
" 0 = hide access
" 1 = show access
let OmniCpp_ShowAccess = 1
" This option can be use if you don't want to parse using namespace declarations in included files and want to add namespaces that are always used in your project.
let OmniCpp_DefaultNamespaces = ["std"]
" Complete Behaviour
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
" When 'completeopt' does not contain "longest", Vim automatically select the first entry of the popup menu. You can change this behaviour with the OmniCpp_SelectFirstItem option.
let OmniCpp_SelectFirstItem = 1


" Pydoc
au FileType python set keywordprg=pydoc
"au FileType python set dictionary=~/.vim/dic/py
" let g:SuperTabDefaultCompletionType = "supertab-contexttext"
" let g:SuperTabDefaultCompletionType = "<c-x><c-u>"

" PyDiction
"let g:pydiction_location = '~/.vim/ftplugin/pydiction/complete-dict'


let s:PathToExecutable = '/opt/local/bin/python'

" Python settings
let python_highlight_all = 1

" Grep
let Grep_Find_Use_Xargs = 0
"let Grep_Default_Filelist = '*.css *.js *.php *.action.php *.view.php *.helper.php *_peer.class.php' 
"
"let g:pep8_map='<c-8>'

" Snippet's
 
imap {<CR> {<CR>}<Esc>0
iabbrev ,d var_export( );<esc>3ha
iabbrev ,c console.log( );<esc>3ha
iabbrev ,l log.debug( );<esc>3ha
iabbrev todo /* TODO <Esc>mai */<Esc>`ai
iabbrev fixme /* FIXME <Esc>mai */<Esc>`ai
vnoremap _gt "zdi{{ _('<C-R>z') }}<ESC>

" Netrw
let g:netrw_liststyle=1

" Хз

" Bufexplorer
let g:bufExplorerSortBy='fullpath'
let g:bufExplorerShowRelativePath=1

" Edit .vimrc
nmap ,s :source ~/.vimrc
nmap ,v :e ~/.vimrc

" MinibuffExplorer
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplSplitToEdge = 1
map <Leader>b :TMiniBufExplorer<cr>


" Tasklist
let g:tlWindowPosition = 0
let g:tlRememberPosition = 1

" CSS in html
let html_use_css = 1

" Поиск и замена слова под курсором
nmap ;s :%s/\<<c-r>=expand("<cword>")<cr>\>/

" Debug world under cursor
nmap ;d byeodbg<esc>p

"Zen codding
let g:user_zen_expandabbr_key = '<c-z>'
let g:use_zen_complete_tag = 1
"let g:user_zen_settings = {
            "\  'lang' : 'ja',
            "\  'html' : {
            "\    'filters' : 'html',
            "\    'indentation' : ' '
            "\  },
            "\  'css' : {
            "\    'filters' : 'fc',
            "\  },
            "\  'javascript' : {
            "\    'snippets' : {
            "\      'jq' : "$(function() {\n\t${cursor}${child}\n});",
            "\      'jq:each' : "$.each(arr, function(index, item) {\n\t${child}\n});",
            "\      'fn' : "(function() {\n\t${cursor}\n})();",
            "\      'tm' : "setTimeout(function() {\n\t${cursor}\n}, 100);",
            "\    },
            "\  },
            "\}


python << EOF
import vim
import re

ipdb_breakpoint = 'import ipdb; ipdb.set_trace()'

def set_breakpoint():
    breakpoint_line = int(vim.eval('line(".")')) - 1

    current_line = vim.current.line
    white_spaces = re.search('^(\s*)', current_line).group(1)
    vim.current.buffer.append(white_spaces + ipdb_breakpoint, breakpoint_line)

vim.command('map <f6> :py set_breakpoint()<cr>')

def remove_breakpoints():
    op = 'g/^.*%s.*/d' % ipdb_breakpoint
    vim.command(op)

vim.command('map <f7> :py remove_breakpoints()<cr>')
EOF


" F1-F19 key's

" F1 - Empty Search
nnoremap <F1> :Rgrep<CR>

" F2 - Save Buffer
map ,w :w<cr>
map <F2> :w<cr>
vmap <F2> <esc>:w<cr>gv
imap <F2> <esc>:w<cr>

" F3 - TagBar
map <F3> :TagbarToggle<cr>

" F4 - Toggle Project
nmap <silent> <F4> <Plug>ToggleProject

" F5 - FileExplorer
map <F5> :Ex<cr>
vmap <F5> <esc>:Ex<cr>gv
imap <F5> <esc>:Ex<cr>i

" F8 - List Buffer's
map <F8> <Esc>:BufExplorer<cr>
vmap <F8> <esc>:BufExplorer<cr>
imap <F8> <esc><esc>:BufExplorer<cr>

" F10 - Remove Buffer
map <F10> :bd<cr>
vmap <F10> <esc>:bd<cr>
imap <F10> <esc>:bd<cr>

" F11 - Split Gorizontal
map <F11> :sp<cr>
vmap <F11> <esc>:sp<cr>
imap <F11> <esc>:sp<cr>

" F11 - Split Vertical
map <M-F11> :vs<cr>
vmap <M-F11> <esc>:vs<cr>
imap <M-F11> <esc>:vs<cr>

" F12 - Hide Buffer
map <F12> :hide<cr>
vmap <F12> <esc>:hide<cr>
imap <F12> <esc>:hide<cr>

" F13 - Save Session
map <F13> :mksession! ~/.vim/session/my_session<cr>
vmap <F13> <esc>:mksession! ~/.vim/session/my_session<cr>
imap <F13> <esc>:mksession! ~/.vim/session/my_session<cr>

" F14 - Load Session
map <F14> :so ~/.vim/session/my_session<cr>
vmap <F14> <esc>:so ~/.vim/session/my_session<cr>
imap <F14> <esc>:so ~/.vim/session/my_session<cr>

" F15
" F16
" F17
" F18

" Russian keyboard
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
"map . /

map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >
"map , ?
"map ; $

