call plug#begin('~/.vim/plugged')

" The following are examples of different formats supported.
" Keep Plug commands between vundle#begin/end.
" plugin on GitHub repo

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
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plug 'ascenator/L9', {'name': 'newL9'}

Plug 'scrooloose/nerdtree'

Plug 'preservim/tagbar'
Plug 'simrat39/symbols-outline.nvim'

Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'airblade/vim-gitgutter'
Plug 'nvie/vim-flake8'

"" Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}

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
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'idanarye/vim-merginal'
Plug 'jeetsukumaran/vim-buffergator'
"Plug 'fisadev/vim-isort'
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
"Plug 'Shougo/deoplete.nvim'
Plug 'davidhalter/jedi-vim'
"Plug 'zchee/deoplete-jedi'
""" The next two plugins are for deoplete to work
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'


"Plug 'jremmen/vim-ripgrep'
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

"Plug 'iqxd/vim-mine-sweeping'
"Plug 'dansomething/vim-hackernews'

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'jsit/toast.vim'

Plug 'dyng/ctrlsf.vim'
Plug 'nvim-lua/plenary.nvim'

"Plug 'WhiteBlackGoose/magma-nvim-goose', { 'do': ':UpdateRemotePlugins' }
"Plug 'hrsh7th/nvim-cmp'
"Plug 'lkhphuc/jupyter-kernel.nvim'

Plug 'yasuhiroki/github-actions-yaml.vim'

"Plug 'luk400/vim-jukit' 
" or                                , { 'branch': '0.1.x' }
" All of your Plugs must be added before the following line
" To ignore plugin indent changes, instead use:
call plug#end()


"
" Brief help
" :PlugList       - lists configured plugins
" :PlugInstall    - installs plugins; append `!` to update or just :PlugUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal
let g:python_host_prog = '/usr/bin/python3' 
set nocompatible              " be iMproved, required
filetype off                  " required

let g:deoplete#enable_at_startup = 1

" Jedi is used only for jumping to definition, not for completion.
let g:jedi#completions_enabled = 0

filetype plugin on
let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
let g:instant_markdown_port = 8800


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

"" Terminal no line numbers
autocmd TermOpen * setlocal nonumber norelativenumber

"Indenting
vnoremap < <gv^
vnoremap > >gv^

nnoremap <C-h> :noh<CR>

map tb :TagbarToggle<CR>
map so :SymbolsOutline<CR>
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
"set updatetime=500

"let g:tagbar_position = 'topleft vertical'


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


"" let g:virtualenv_directory = './venv'
"
let g:fubitive_domain_pattern = 'bitbucket-p\.internal\.epo\.org'
"colorscheme dracula
"let g:dracula_airline = 1

colorscheme rigel
let g:rigel_airline = 1
let g:airline_theme = 'papercolor'
set background=dark
"colorscheme toast
"let g:airline_theme = 'dracula'


"colorscheme dracula
"let g:airline_theme = 'dracula'

"let g:airline_theme='one'
"set background=light        " for the light version
"let g:one_allow_italics = 1 " I love italic for comments
"colorscheme one

"let g:airline_theme = 'papercolor'
"set background=light
"colorscheme PaperColor

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

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" Use the ack tool as the backend
let g:ctrlsf_backend = 'ack'

"let g:magma_automatically_open_output = v:true
"let g:magma_image_provider = "ueberzug"

"nnoremap <silent><expr> <LocalLeader>m  :MagmaEvaluateOperator<CR>
"nnoremap <silent>       <LocalLeader>ml :MagmaEvaluateLine<CR>
"xnoremap <silent>       <LocalLeader>m  :<C-u>MagmaEvaluateVisual<CR>
"nnoremap <silent>       <LocalLeader>mc :MagmaReevaluateCell<CR>
"nnoremap <silent>       <LocalLeader>md :MagmaDelete<CR>
"nnoremap <silent>       <LocalLeader>mo :MagmaShowOutput<CR>

"lua <<EOF
"local cmp = require'cmp'
"cmp.setup({
"    sources = cmp.config.sources({
"      { name = 'jupyter' },
"    }, {
"      { name = 'buffer' },
"    })
"})

"function MagmaInitPython()
"    vim.cmd[[
"    :MagmaInit python3
"    :MagmaEvaluateArgument a=5
"    ]]
"end

"vim.cmd[[
":command MagmaInitPython lua MagmaInitPython()
"]]

"EOF



"let g:jukit_terminal = 'nvimterm'
"let g:jukit_terminal = 'tmux'
"let g:jukit_layout = {
"    \'split': 'horizontal',
"    \'p1': 0.6, 
"    \'val': [
"        \'file_content',
"        \{
"            \'split': 'vertical',
"            \'p1': 0.6,
"            \'val': ['output', 'output_history']
"        \}
"    \]
"\}
let g:clipboard = {
  \   'name': 'WslClipboard',
  \   'copy': {
  \      '+': 'clip.exe',
  \      '*': 'clip.exe',
  \    },
  \   'paste': {
  \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  \   },
  \   'cache_enabled': 0,
  \ }



""" LSP
lua << EOF
-- Mappings.
local opts = { noremap=true, silent=true }

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', '<leader>K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', '<leader>i', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<leader>D', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', '<space>K', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<leader>t', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', '<leader>f', vim.lsp.buf.formatting, bufopts)
    vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
end

-- this part is telling Neovim to use the lsp server
local servers = { 'pyright', 'tsserver' }
for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        on_attach = on_attach,
        flags = {
          debounce_text_changes = 150,
        }
    }
end

-- this is for diagnositcs signs on the line number column
-- use this to beautify the plain E W signs to more fun ones
-- !important nerdfonts needs to be setup for this to work in your terminal
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " } 
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl= hl, numhl = hl })
end


-- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    completion = {
      keyword_length = 3,  -- Add this line
    },
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    }),
    completion = {
        completeopt = 'menu,menuone,noinsert',
        keyword_length = 3, -- Minimum keyword length to trigger completion
      },
  })

  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  -- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
  --   capabilities = capabilities
  -- }
  -- local servers = { 'pyright', 'tsserver' }
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['tsserver'].setup {
    capabilities = capabilities
  }

  -- LSP Tagbar alternative

  local opts = {
    highlight_hovered_item = true,
    show_guides = true,
    auto_preview = false,
    position = 'right',
    relative_width = true,
    width = 10,
    auto_close = false,
    show_numbers = false,
    show_relative_numbers = false,
    show_symbol_details = true,
    preview_bg_highlight = 'Pmenu',
    autofold_depth = nil,
    auto_unfold_hover = true,
    fold_markers = { '', '' },
    wrap = false,
    keymaps = { -- These keymaps can be a string or a table for multiple keys
      close = "q",
      goto_location = "<Cr>",
      focus_location = "o",
      hover_symbol = "<C-space>",
      toggle_preview = "<C-p>",
      rename_symbol = "r",
      code_actions = "a",
      fold = "-",
      unfold = "+",
      fold_all = "[",
      unfold_all = "]",
      fold_reset = "R",
    },
    lsp_blacklist = {},
    symbol_blacklist = {},
    symbols = {
      File = { icon = "", hl = "@text.uri" },
      Module = { icon = "", hl = "@namespace" },
      Namespace = { icon = "", hl = "@namespace" },
      Package = { icon = "", hl = "@namespace" },
      Class = { icon = "𝓒", hl = "@type" },
      Method = { icon = "ƒ", hl = "@method" },
      Property = { icon = "", hl = "@method" },
      Field = { icon = "", hl = "@field" },
      Constructor = { icon = "", hl = "@constructor" },
      Enum = { icon = "ℰ", hl = "@type" },
      Interface = { icon = "ﰮ", hl = "@type" },
      Function = { icon = "", hl = "@function" },
      Variable = { icon = "", hl = "@constant" },
      Constant = { icon = "", hl = "@constant" },
      String = { icon = "𝓐", hl = "@string" },
      Number = { icon = "#", hl = "@number" },
      Boolean = { icon = "⊨", hl = "@boolean" },
      Array = { icon = "", hl = "@constant" },
      Object = { icon = "⦿", hl = "@type" },
      Key = { icon = "🔐", hl = "@type" },
      Null = { icon = "NULL", hl = "@type" },
      EnumMember = { icon = "", hl = "@field" },
      Struct = { icon = "𝓢", hl = "@type" },
      Event = { icon = "🗲", hl = "@type" },
      Operator = { icon = "+", hl = "@operator" },
      TypeParameter = { icon = "𝙏", hl = "@parameter" },
      Component = { icon = "", hl = "@function" },
      Fragment = { icon = "", hl = "@constant" },
    },
  }

  require("symbols-outline").setup(opts)


  local custom_lsp_attach = function(_, bufnr)
    print('LSP attached')
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  end

  require'lspconfig'.yamlls.setup {
    settings = {
      yaml = {
        schemaStore = {
          url = "https://www.schemastore.org/api/json/catalog.json",
          enable = true,
        }
      }
    },
    on_attach = custom_lsp_attach
  }

EOF



