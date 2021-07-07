"    __  ____       ______     _       _ __        _         
"   /  |/  / |     / / __ \   (_)___  (_) /__   __(_)___ ___ 
"  / /|_/ /| | /| / / /_/ /  / / __ \/ / __/ | / / / __ `__ \
" / /  / / | |/ |/ / _, _/  / / / / / / /__| |/ / / / / / / /
"/_/  /_/  |__/|__/_/ |_|  /_/_/ /_/_/\__(_)___/_/_/ /_/ /_/ 

" Source configs
lua require('plugins')
lua require('mwr.lsp')
lua require('mwr.lualine')
lua require('mwr.treesitter')
lua require('mwr.fterm')
lua require('mwr.formatter')
lua require('mwr.tree')
source $HOME/.config/nvim/plugins/barbar.vim

" General Settings --------------------------
let mapleader = ","
set termguicolors
colorscheme onedark
set number relativenumber
set noshowmode      " doubles up with lualine
set hidden
set wildmode=longest:full,full
set ignorecase
set smartcase
set nohlsearch
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set splitbelow splitright
set scrolloff=8
set noswapfile
set nobackup
set undofile
set hidden
set nowrap
set signcolumn=yes
set updatetime=300
let loaded_matchparen = 1
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_char = '·'
let g:nvim_tree_width = 40
let g:nvim_tree_ignore = [ '.git', '.cache' ] 
let g:nvim_tree_quit_on_open = 1
let g:vim_json_conceal=0
let g:nvim_tree_show_icons = {
            \ 'git': 0,
            \ 'folders': 1,
            \ 'files': 1,
            \ }
augroup checktime
    autocmd!
    if !has("gui_running")
        autocmd BufEnter,FocusGained,FocusLost,WinLeave * checktime
    endif
augroup END
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Keybindings ----------------------
noremap <leader>w :w<CR>
noremap <F4> :set hlsearch! hlsearch?<CR>
noremap <F3> :TSBufToggle highlight<CR>
nnoremap q: <nop>
nnoremap Q <nop>
nnoremap <leader>s :%s//g<Left><Left>
nnoremap <silent> <leader>q :BufferClose<CR>
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <F5> :Format<CR>
nnoremap <silent> <leader>g :NvimTreeToggle<CR>

" Shortcutting split navigation, saving a keypress:
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" nvim compe
set completeopt=menuone,noselect
set shortmess+=c

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <C-y> compe#confirm('<CR>')

" vsnip
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.svelte = ['html', 'javascript']
let g:vsnip_filetypes.astro = ['html', 'javascript']
let g:vsnip_filetypes.javascriptreact = ['html']
let g:vsnip_filetypes.typescriptreact = ['html']
" let g:vsnip_filetypes.javascript = ['html']

augroup filetypedetect
    autocmd BufNew,BufNewFile,BufRead *.astro :setfiletype html
augroup END

