call plug#begin('~/.vim/plugged')

" The following are examples of different formats supported.
" Keep Plug commands between vundle#begin/end.
" plugin on GitHub repo

Plug 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plug 'L9'
" Git plugin not hosted on GitHub
"
" Plug 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plug 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plug 'ascenator/L9', {'name': 'newL9'}

Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'airblade/vim-gitgutter'
Plug 'nvie/vim-flake8'

 Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}

Plug 'dense-analysis/ale'
Plug 'fisadev/fixedtasklist.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'rigellute/rigel'
Plug 'rakr/vim-one'
Plug 'rafi/awesome-vim-colorschemes'

Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'chase/vim-ansible-yaml'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'idanarye/vim-merginal'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'fisadev/vim-isort'
"" Plug 'python/black'
Plug 'xolox/vim-session'
Plug 'luochen1990/rainbow'
Plug 'scrooloose/nerdcommenter'
Plug 'iberianpig/tig-explorer.vim'
"" Plug 'ryanoasis/nerd-fonts'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'rhysd/devdocs.vim'
Plug 'tpope/vim-rhubarb'
Plug 'asins/renamer.vim'
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-spellcheck'
Plug 'integralist/vim-mypy'
Plug 'jmcantrell/vim-virtualenv'
"" Plug 'neoclide/coc.nvim', {'branch': 'master'}
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'Shougo/deoplete.nvim'
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'
"" The next two plugins are for deoplete to work
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chengzeyi/fzf-preview.vim'

Plug 'whiteinge/diffconflicts'

Plug 'mileszs/ack.vim'
Plug 'yssl/VIntSearch'

Plug 'pixelneo/vim-python-docstring'

Plug 'martinda/Jenkinsfile-vim-syntax'

Plug 'tommcdo/vim-fubitive'

Plug 'julienr/vim-cellmode'
Plug 'jpalardy/vim-slime'
Plug 'jpalardy/vim-slime', { 'for': 'python' }
Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }
Plug 'erietz/vim-terminator'


Plug 'iqxd/vim-mine-sweeping'


" All of your Plugs must be added before the following line
" To ignore plugin indent changes, instead use:
call plug#end()

"
" Brief help
" :PlugList       - lists configured plugins
" :PlugInstall    - installs plugins; append `!` to update or just :PlugUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal
let g:python_host_prog = '/usr/bin/python' 
set nocompatible              " be iMproved, required
filetype off                  " required

let g:deoplete#enable_at_startup = 1

" Jedi is used only for jumping to definition, not for completion.
let g:jedi#completions_enabled = 0

filetype plugin on
let g:instant_markdown_logfile = '/tmp/instant_markdown.log'


syntax on

set shell=/bin/bash
set ruler
set tabstop=4 shiftwidth=4 expandtab
set backspace=indent,eol,start
set tags=./tags
set hlsearch
set number
set colorcolumn=89
set cursorline

"set nofoldenable    "" disable folding
set foldenable 
set foldmethod=manual

"Indenting
vnoremap < <gv^
vnoremap > >gv^

map <F4> :TagbarToggle<CR>
map tb :TagbarToggle<CR>
map <F3> :NERDTreeToggle<CR>
map nf :NERDTreeFind<CR>
map nt :NERDTreeToggle<CR>
map <F2> :TaskList<CR>
map tl :TaskList<CR>

let g:NERDTreeNodeDelimiter = "\u00a0"
"map <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
"nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"" autocmd FileType python map <buffer> <F8> :call flake8#Flake8()<CR>

let g:indent_guides_enable_on_vim_startup = 1
let g:python_style = 'numpy'


"""" enable 24bit true color
set termguicolors

"""" enable the theme
syntax enable
let g:airline#extensions#ale#enabled = 1
" disable mode
let g:airline_section_a = ''
" disable file type
let g:airline_section_x = ''
" disable file encoding
let g:airline_section_y = ''
" show only line and column
let g:airline_section_z = '%l:%c'

" update tagbar faster
set updatetime=500


nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>

let g:ansible_options = {'documentation_mapping': '<C-K>'}

let g:loaded_matchparen=1
let g:rainbow_active = 1

let g:session_autoload = 'no'
let g:session_autosave = 'no'

"" Gdiff vertical
set diffopt+=vertical


"" open tig with current file
nnoremap <Leader>T :TigOpenCurrentFile<CR>

"" open tig with Project root path
nnoremap <Leader>t :TigOpenProjectRootDir<CR>

"" open tig grep
nnoremap <Leader>g :TigGrep<CR>

"" resume from last grep
nnoremap <Leader>r :TigGrepResume<CR>

"" open tig grep with the selected word
vnoremap <Leader>g y:TigGrep<Space><C-R>"<CR>

"" open tig grep with the word under the cursor
nnoremap <Leader>cg :<C-u>:TigGrep<Space><C-R><C-W><CR>

"" open tig blame with current file
nnoremap <Leader>b :TigBlame<CR>

set encoding=UTF-8
"" set guifont=DroidSansMono\ Nerd\ Font\ 10
"" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 10

let g:airline_powerline_fonts = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
" loading the plugin
let g:webdevicons_enable = 1



"let g:NERDTreeIndicatorMapCustom = {
    "\ "Modified"  : "✹",
    "\ "Staged"    : "✚",
    "\ "Untracked" : "✭",
    "\ "Renamed"   : "➜",
    "\ "Unmerged"  : "═",
    "\ "Deleted"   : "✖",
    "\ "Dirty"     : "✗",
    "\ "Clean"     : "✔︎",
    "\ 'Ignored'   : '☒',
    "\ "Unknown"   : "?"
    "\ }

"" https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
let s:blue = "689FB6"
let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['py'] = s:blue " sets the color of css files to blue

"" devdocs.io
nmap K <Plug>(devdocs-under-cursor-all)

""let g:instant_markdown_open_to_the_world = 1
""let g:instant_markdown_autoscroll = 0

"" Cut/Copy/Paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+


" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'


"" let g:virtualenv_directory = './venv'
"
let g:fubitive_domain_pattern = 'bitbucket-p\.internal\.epo\.org'

"colorscheme rigel

"let g:rigel_airline = 1
"let g:airline_theme = 'papercolor'
"set background=dark

"let g:airline_theme='one'
"set background=light        " for the light version
"let g:one_allow_italics = 1 " I love italic for comments
"colorscheme one

let g:airline_theme = 'papercolor'
set background=light
colorscheme PaperColor

set pyxversion=3

" ALE Python fixers
let g:ale_fixers = {'python': ['isort', 'black', 'remove_trailing_lines', 'trim_whitespace']}
" Set this variable to 1 to fix files when you save them.
"" let g:ale_fix_on_save = 1

" push cwindow to the bottom, instead of opening in tagbar
autocmd FileType qf wincmd J

command! -nargs=0 FT enew <bar> FZFTags

autocmd InsertEnter * hi clear LineNr | hi LineNr ctermfg=blue

autocmd InsertLeave * hi clear LineNr | hi LineNr ctermfg=green
:set mouse=a

set redrawtime=10000
set exrc
set secure

" https://github.com/julienr/vim-cellmode
" Execute all cells above the current line
noremap <silent> <C-a> :call RunTmuxPythonAllCellsAbove()<CR>


map tiv :vnew<CR>:terminal<CR>iipython<CR><C-\><C-n>
map tih :new<CR>:terminal<CR>iipython<CR><C-\><C-n>
map tit :tabnew<CR>:terminal<CR>iipython<CR><C-\><C-n>

map vtiv :vnew<CR>:terminal<CR>i. venv/bin/activate<CR>ipython<CR><C-\><C-n>
map vtih :new<CR>:terminal<CR>i. venv/bin/activate<CR>ipython<CR><C-\><C-n>
map vtit :tabnew<CR>:terminal<CR>i. venv/bin/activate<CR>ipython<CR><C-\><C-n>

map <leader>ipdb iimport ipdb; ipdb.set_trace(context=10)<CR><ESC>

"------------------------------------------------------------------------------
" slime configuration 
"------------------------------------------------------------------------------
" always use tmux
"let g:slime_target = 'tmux'
let g:slime_target = "neovim"
let g:slime_cell_delimiter = "##"
nmap <C-c><C-s> <Plug>SlimeSendCell



" fix paste issues in ipython
let g:slime_python_ipython = 1

let g:slime_dont_ask_default = 0

"------------------------------------------------------------------------------
" ipython-cell configuration
"------------------------------------------------------------------------------
" Keyboard mappings. <Leader> is \ (backslash) by default

" map <Leader>s to start IPython
nnoremap <Leader>s :SlimeSend1 ipython --matplotlib<CR>

" map <Leader>r to run script
nnoremap <Leader>r :IPythonCellRun<CR>

" map <Leader>R to run script and time the execution
nnoremap <Leader>R :IPythonCellRunTime<CR>

" map <Leader>c to execute the current cell
nnoremap <Leader>c :IPythonCellExecuteCell<CR>

" map <Leader>C to execute the current cell and jump to the next cell
nnoremap <Leader>C :IPythonCellExecuteCellJump<CR>

" map <Leader>l to clear IPython screen
nnoremap <Leader>l :IPythonCellClear<CR>

" map <Leader>x to close all Matplotlib figure windows
nnoremap <Leader>x :IPythonCellClose<CR>

" map [c and ]c to jump to the previous and next cell header
nnoremap [c :IPythonCellPrevCell<CR>
nnoremap ]c :IPythonCellNextCell<CR>

" map <Leader>h to send the current line or current selection to IPython
nmap <Leader>h <Plug>SlimeLineSend
xmap <Leader>h <Plug>SlimeRegionSend

" map <Leader>p to run the previous command
nnoremap <Leader>p :IPythonCellPrevCommand<CR>

" map <Leader>Q to restart ipython
nnoremap <Leader>Q :IPythonCellRestart<CR>

" map <Leader>d to start debug mode
nnoremap <Leader>D :SlimeSend1 %debug<CR>

" map <Leader>q to exit debug mode or IPython
nnoremap <Leader>q :SlimeSend1 exit<CR>

" map <F9> and <F10> to insert a cell header tag above/below and enter insert mode
nmap <F9> :IPythonCellInsertAbove<CR>a
nmap <F10> :IPythonCellInsertBelow<CR>a

" also make <F9> and <F10> work in insert mode
imap <F9> <C-o>:IPythonCellInsertAbove<CR>
imap <F10> <C-o>:IPythonCellInsertBelow<CR>

