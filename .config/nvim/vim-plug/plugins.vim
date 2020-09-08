if empty(glob('~/.config/nvim/autoload/plug.vim'))
		  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		  "
endif

call plug#begin('~/.config/nvim/plugged')

" Themes
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Python 
Plug 'jmcantrell/vim-virtualenv'
Plug 'turbio/bracey.vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'

" Web Dev
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'ap/vim-css-color'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'chrisbra/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


