syntax on


set noerrorbells
set tabstop=4 softtabstop=4
set number relativenumber
set smartcase
set smartindent
set noswapfile 
set nobackup
set nowrap
set undodir=~/.vim/undodir
set undofile
set incsearch
set bg=dark
set clipboard=unnamedplus
set splitbelow splitright 
set cursorline
set guicursor=

source $HOME/.config/nvim/vim-plug/plugins.vim

autocmd vimenter * NERDTree
colo palenight

let python_higlight_all=1
let mapleader=" "
let g:user_emmet_leader_key='<c-z>'
let g:virtualenv_directory = '~/.virtualenvs'
let g:gruvbox_transparent_bg=1
let g:airline_theme='palenight'
let g:palenight_terminal_italics=1
let g:vim_jsx_pretty_colorful_config = 1 


nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
tnoremap <esc><esc>	<c-\><c-n>

" Tabs
let g:airline#extensions#tabline#enabled = 1


" ============================== COC.NVIM ========================
"
"<tab> for auto completion Coc
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Remap keys for goto
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> gh :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


"=================================================================

" PRETTIER
command! -nargs=0 Prettier :CocCommand prettier.formatFile


autocmd VimEnter * silent exec "! echo -ne '\e[1 q'"
autocmd VimLeave * silent exec "! echo -ne '\e[5 q'" 

if (has("termguicolors"))
  set termguicolors
endif


hi  Normal guibg=NONE ctermbg=NONE


" AUTOCOMPLETION
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
