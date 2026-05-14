call plug#begin('~/.local/share/nvim/plugged')

" List your plugins here
"Plug 'neoclide/coc.nvim', {'branch': 'release'}


Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

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

Plug 'scrooloose/nerdtree'
Plug 'preservim/tagbar'

Plug 'xolox/vim-easytags'

Plug 'xolox/vim-misc'
Plug 'airblade/vim-gitgutter'
Plug 'nvie/vim-flake8'

Plug 'davidhalter/jedi-vim'

Plug 'dense-analysis/ale'
Plug 'fisadev/fixedtasklist.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'rigellute/rigel'
Plug 'rakr/vim-one'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'projekt0n/github-nvim-theme'

Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'chase/vim-ansible-yaml'
Plug 'stephpy/vim-yaml'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'idanarye/vim-merginal'
Plug 'jeetsukumaran/vim-buffergator'


Plug 'xolox/vim-session'
Plug 'luochen1990/rainbow'
Plug 'scrooloose/nerdcommenter'
Plug 'iberianpig/tig-explorer.vim'

Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'rhysd/devdocs.vim'
Plug 'tpope/vim-rhubarb'
Plug 'asins/renamer.vim'
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-spellcheck'
Plug 'integralist/vim-mypy'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chengzeyi/fzf-preview.vim'

Plug 'whiteinge/diffconflicts'

"Plug 'mileszs/ack.vim'
"Plug 'yssl/VIntSearch'

Plug 'pixelneo/vim-python-docstring'

Plug 'martinda/Jenkinsfile-vim-syntax'

"Plug 'tommcdo/vim-fubitive'

Plug 'julienr/vim-cellmode'
Plug 'jpalardy/vim-slime'
Plug 'jpalardy/vim-slime', { 'for': 'python' }
Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }
Plug 'erietz/vim-terminator'


Plug 'Xuyuanp/scrollbar.nvim'
Plug 'yasuhiroki/github-actions-yaml.vim'

Plug 'akinsho/toggleterm.nvim', { 'tag' : '*' }

"Plug 'neovim/nvim-lspconfig'
"Plug 'hrsh7th/nvim-cmp'
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'hrsh7th/cmp-buffer'
"Plug 'hrsh7th/cmp-path'
"Plug 'hrsh7th/cmp-cmdline'
"Plug 'hrsh7th/cmp-vsnip'
"Plug 'hrsh7th/vim-vsnip'


call plug#end()

" Required settings for CoC
filetype plugin indent on
syntax on
set hidden

let g:rainbow_active = 1
let g:session_autoload = 'no'

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


autocmd FileType markdown,text setlocal spell
set spelllang=en,ro

"" Terminal no line numbers
autocmd TermOpen * setlocal nonumber norelativenumber

"Indenting
vnoremap < <gv^
vnoremap > >gv^

nnoremap <C-h> :noh<CR>

map tb :TagbarToggle<CR>
"map so :SymbolsOutline<CR>
" File Explorer:
map nf :NERDTreeFind<CR>
map nt :NERDTreeToggle<CR>
map tl :TaskList<CR>

let g:NERDTreeNodeDelimiter = "\u00a0"
"map <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']


" NORMAL mode: move cursor word by word
nnoremap <C-Left>  b
nnoremap <C-Right> w

" INSERT mode: exit to normal, move, and return to insert
inoremap <C-Left>  <Esc>bi
inoremap <C-Right> <Esc>wi

set encoding=UTF-8
"" set guifont=DroidSansMono\ Nerd\ Font\ 10
"" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 10

let g:airline_powerline_fonts = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
" loading the plugin
let g:webdevicons_enable = 1



let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

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

" colorscheme rigel
colorscheme oceanic_material
let g:rigel_airline = 1
let g:airline_theme = 'papercolor'
set background=dark


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

map <leader>vt :vnew<CR>:terminal<CR>
map <leader>ht :new<CR>:terminal<CR>

map <leader>ipdb ^iimport ipdb; ipdb.set_trace(context=10)<CR><ESC>

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

let g:easytags_async = 1
let g:easytags_dynamic_files = 1
let g:jedi#completions_enabled = 1

" don't show function signatures
let g:jedi#show_call_signatures = 0

" show completion menu even if only one item
set completeopt=menuone,noinsert,noselect

" let popup appear after 3 typed characters
autocmd FileType python setlocal omnifunc=jedi#completions
inoremap <silent><expr> <C-Space> (col('.') > 3 ? "\<C-x>\<C-o>" : "")
let g:jedi#popup_select_first = 0
let g:jedi#popup_on_dot = 1

" trigger omni completion automatically after 3 chars
augroup autocomplete
  autocmd!
  autocmd FileType python,yaml,yml,dosini,conf,cfg autocmd InsertCharPre <buffer> if col('.') > 2 | silent! call feedkeys("\<C-x>\<C-o>", 'n') | endif
augroup END


" Optional: if you keep the standalone vim-flake8 plugin, match it too
let g:flake8_max_line_length = 88

" Use tools from the ACTIVE venv
if !empty($VIRTUAL_ENV)
  let g:python3_host_prog = $VIRTUAL_ENV . '/bin/python3'
endif

" --- ALE: only flake8 + mypy, no pylsp ---
let g:ale_linters = { 'python': ['flake8', 'mypy'] }
let g:ale_linters_ignore = { 'python': ['pylsp'] }   " ensure pylsp is off
let g:ale_disable_lsp = 1                            " optional: disable LSP in ALE

" Run executables from your venv
let g:ale_python_flake8_executable = $VIRTUAL_ENV . '/bin/flake8'
let g:ale_python_flake8_options    = '--max-line-length=88'
let g:ale_python_mypy_executable   = $VIRTUAL_ENV . '/bin/mypy'


" --- Omnifunc setup per filetype ---
" --- FIXED Omnifunc setup ---
augroup omnifuncs
  autocmd!
  " Python remains assigned to Jedi
  autocmd FileType python setlocal omnifunc=jedi#completions

  " YAML, INI, and CFG now use the reliable syntax-based completion
  " This replaces the broken 'yamlcomplete' and 'complete#Complete' calls
  autocmd FileType yaml,yml,dosini,conf,cfg,vim setlocal omnifunc=syntaxcomplete#Complete

  " Fallback for any other filetype
  autocmd FileType * if &omnifunc ==# '' | setlocal omnifunc=syntaxcomplete#Complete | endif
augroup END


" --- NEW: ToggleTerm Lua Configuration ---
lua << EOF
local Terminal = require('toggleterm.terminal').Terminal

-- Create a persistent terminal for Pi
local pi_agent = Terminal:new({ 
  cmd = "pi", 
  hidden = true, 
  direction = "vertical",
  on_open = function(term)
    -- If opening vertically, move it to the far left (NERDTree style)
    if term.direction == "vertical" then
      vim.cmd("wincmd H")
    end
    -- Terminal keybindings
    vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<esc>", [[<C-\><C-n>]], {noremap = true, silent = true})
  end,
})

-- Functions to toggle directions
function _pi_toggle_sidebar()
  pi_agent:toggle(45, "vertical")
end

function _pi_toggle_float()
  pi_agent:toggle(nil, "float")
end
EOF

" --- NEW: Pi Toggle Keybindings ---
nnoremap <silent><leader>ps <Cmd>lua _pi_toggle_sidebar()<CR>
nnoremap <silent><leader>pf <Cmd>lua _pi_toggle_float()<CR>
