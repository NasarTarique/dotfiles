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

colo palenight

let python_higlight_all=1
let mapleader=" "
let g:user_emmet_leader_key='<c-z>'
let g:virtualenv_directory = '~/.virtualenvs'
let g:gruvbox_transparent_bg=1
let g:airline_theme='palenight'
let g:palenight_terminal_italics=1
let g:vim_jsx_pretty_colorful_config = 1
let g:vimwiki_table_mappings = 0
let g:vimwiki_global_ext = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>zg :Goyo <CR>
nnoremap <leader>t :sp <bar> res20 <bar> term <CR>
nnoremap <leader>su :source ~/.config/nvim/init.vim <CR>
tnoremap <esc><esc>	<c-\><c-n>
nnoremap <leader>\ :r !date <CR>
nnoremap <leader>; :NERDTree <CR>
nnoremap <leader>f :FZF <CR>

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

" C++ Syntax highlighting=
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let c_no_curly_error=1
"=================================================================

hi  Normal guibg=NONE ctermbg=NONE
"
"Java Syntax highlighting
let java_highlight_functions = 1
let java_highlight_all = 1

highlight link javaScopeDecl Statement
highlight link javaType Type
highlight link javaDocTags PreProc

" Markdown
nnoremap <leader>md :!zathura '%:r'.pdf & <CR>
nnoremap <leader>mc :! pandoc -o '%:r'.pdf '%' <CR>

" VIM WIKI
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
" AUTOCOMPLETION
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
