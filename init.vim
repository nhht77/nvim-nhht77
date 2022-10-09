" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2
set cursorline
set number
set relativenumber
set title
set syntax=whitespace

" Syntax on
filetype plugin indent on
syntax on

" Plugin setup

call plug#begin('~/.vim/plugged')
    " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'

    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'

    Plug 'plasticboy/vim-markdown'

    " Git
    Plug 'airblade/vim-gitgutter'

    " Use release branch (recommend)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Fzf search
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

call plug#end()

" we will add keybinds below this comment.g

"Changing efault NERDTree arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let ERDTreeShowHidden=1

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Use new vim 8.2 popup windows for Go Doc
let g:go_doc_popup_window = 1
let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment']
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_chan_whitespace_error = 0
let g:go_highlight_types = 0
let g:go_highlight_fields = 0
let g:go_highlight_build_constraints = 0
let g:go_highlight_generate_tags = 0
let g:go_highlight_variable_declarations = 0
let g:go_highlight_variable_assignments = 0

" Normal mode remappings
vnoremap <C-c> :'<,'>w !clip.exe
map <C-v> "+p
nnoremap <C-q> :q!<CR>
nnoremap <F4> :bd<CR>
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <F6> :sp<CR>:terminal<CR>
tnoremap <Esc> <C-\><C-n>

" Tabs
nnoremap <S-Tab> gT
nnoremap <Tab> gt
nnoremap <silent> <S-t> :tabnew<CR>

" Automatically install missing plugins on startup
" autocmd VimEnter *
"  \ if len(filter(values(g:plugs))  

" Import
source $HOME/.config/nvim/plug-config/coc.vim
