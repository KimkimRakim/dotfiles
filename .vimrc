"==============================================================================
"==== Plugin Install (vim-plug)
"==============================================================================
call plug#begin('~/.vim/plugged')
"" hybrind colorscheme
Plug 'w0ng/vim-hybrid'        
Plug 'kristijanhusak/vim-hybrid-material'
"" Nerdtree
Plug 'scrooloose/nerdtree'    
"" Nertree-tab
Plug 'jistr/vim-nerdtree-tabs'
"" Show indent line
Plug 'Yggdroot/indentLine'
"" Shortcut for comment-out
Plug 'tyru/caw.vim'
"" Auto close parentheses 
Plug 'cohama/lexima.vim'
"" Accelerated-jk
Plug 'rhysd/accelerated-jk'
"" Highlight dynamycaly and show
Plug 'osyo-manga/vim-over'    
"" Lightline
Plug 'itchyny/lightline.vim'
"" vim-quickrun
Plug 'thinca/vim-quickrun'
"" surround.vim
Plug 'tpope/vim-surround'
"" vim-repeat
Plug 'tpope/vim-repeat'
"" vim-easyclip
Plug 'svermeulen/vim-easyclip'

"" terraform
Plug 'hashivim/vim-terraform'    
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'

call plug#end()

"==============================================================================
"==== Plugin setting
"==============================================================================
"" Nerdtree
let g:NERDTreeChDirMode=2
map <C-n> <plug>NERDTreeTabsToggle<CR>
" Open nerdtree when file is not specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"" caw.vim
nmap <C-K> <Plug>(caw:hatpos:toggle)
vmap <C-K> <Plug>(caw:hatpos:toggle)

"" accelerated-jk
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

" vim-over 
nnoremap <silent> <Space>o :OverCommandLine<CR>%s///cg<Left><Left><Left><Left>
nnoremap sub :OverCommandLine<CR>%s/<C-r><C-w>//cg<Left><Left><Left>

" Lightline
set noshowmode
set laststatus=2

" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" (Optional)Remove Info(Preview) window
set completeopt-=preview
" (Optional)Hide Info(Preview) window after completions
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"" vim-terraform
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_remap_spacebar=1
let g:terraform_fmt_on_save=1

"" vim-terraform-completion
let g:syntastic_terraform_tffilter_plan = 1
"" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
let g:terraform_completion_keys = 1
"" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
let g:terraform_registry_module_completion = 0

"" vim-quickrun
set splitbelow 

"" vim-easyclip
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

"==============================================================================
"==== set let                                                                  
"==============================================================================
set t_Co=256
"colorscheme hybrid
set background=dark
colorscheme hybrid_material
"" Show current line
set cursorline
set virtualedit=onemore
"" Autoindent
"set smartindent
"" Show { and [
set showmatch
"" Visualize space
set list
set listchars=tab:»-, " trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set expandtab
set tabstop=2
"" Shitwidth
set shiftwidth=2
set ignorecase
"" Ignore case when search
"" hilight search result 
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
"" Select block on visual block mode
set virtualedit=block
"" Copy to clippboard when yunk
set clipboard=unnamed
"" Show cursole coodinate
set ruler
"" Use clipboard
set clipboard=unnamed,autoselect
"" Change cursole on insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
inoremap <Esc> <Esc>

"==============================================================================
"==== other
"==============================================================================

"==============================================================================
"==== key bind
"==============================================================================
"" common
"nnoremap Y y$
nnoremap + <C-a>
nnoremap - <C-x>
nnoremap Q :q! <Enter>
nnoremap <silent> <Space>a ggVG 
nnoremap ; :


