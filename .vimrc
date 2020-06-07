" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
"call plug#begin('~/.vim/plugged')
"
"Plug 'kien/ctrlp.vim', { 'on': 'CtrlP' }
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'matze/vim-move'
"Plug 'Valloric/YouCompleteMe'
"Plug 'morhetz/gruvbox'
"Plug 'jiangmiao/auto-pairs'
"
"call plug#end()





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'jiangmiao/auto-pairs'
Plugin 'airblade/vim-gitgutter'
"Plugin 'aserebryakov/vim-branch-stack'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:ycm_global_ycm_extra_conf = ''
let g:ycm_confirm_extra_conf = 0

set expandtab
set tabstop=4


"let g:move_key_modifier = 'C'

set background=dark "темный цвет терминала

"возможность использовать команды при русской раскладке
set langmap=Ж:,йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,э',яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,ё`,ЯZ

"при поиске помечать все найденные строки
set hlsearch

"при поиске перескакивать на найденный текст в процессе набора строки
set incsearch


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on               "  включить подсветку синтаксиса.
"set nowrap              " не разрывать строку
"set backup              " создавать .bak файлы (по умолчанию <oldname>~)
set autoindent          " установить автоотступ
colorscheme elflord      " меням цветовую схему

"colorscheme quantum     " меням цветовую схему

"set sidescroll=5        " прокрутка вправо/влево когда строка заежает за край и вы по ней ползаете
set listchars+=precedes:<,extends:>     " показывать символы > или < если есть, что слева/справа строки
set ignorecase          " игнорировать прописные/строчные при поиске

" указать цвет комментариев
highlight Comment ctermfg=darkgray

set number


"mapping
"map <C-n> :NERDTreeToggle<CR>
