" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'matze/vim-move'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'

call plug#end()


set expandtab
set tabstop=2


let g:move_key_modifier = 'C'

set background=dark "темный цвет терминала

"возможность использовать команды при русской раскладке
set langmap=Ж:,йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,э',яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,ё`,ЯZ

"при поиске помечать все найденные строки
set hlsearch

"при поиске перескакивать на найденный текст в процессе набора строки
set incsearch


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on               "  включить подсветку синтаксиса.
set nowrap              " не разрывать строку
"set backup              " создавать .bak файлы (по умолчанию <oldname>~)
set autoindent          " установить автоотступ
colorscheme elflord      " меням цветовую схему

"colorscheme quantum     " меням цветовую схему

"set sidescroll=5        " прокрутка вправо/влево когда строка заежает за край и вы по ней ползаете
set listchars+=precedes:<,extends:>     " показывать символы > или < если есть, что слева/справа строки
set ignorecase          " игнорировать прописные/строчные при поиске

" указать цвет комментариев
highlight Comment ctermfg=darkgray

" собрать дерево, посмотреть на ошибки прыгнуть на следующую и на предыдущую соответственно.
"map <F5> :wa^V^M:make^V^M
"map <F6> :cope^V^M
"map <F7> :cp^V^M
"map <F8> :cn^V^M

set number


"mapping
map <C-n> :NERDTreeToggle<CR>
