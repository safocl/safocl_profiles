

set runtimepath+=/usr/share/vim/vimfiles/after/


"set runtimepath+=~/.local/share/nvim/custom/chromatica.nvim/
"let g:python_host_prog  = '/usr/bin/python2'
"let g:python3_host_prog = '/usr/bin/python'
"let g:chromatica#enable_at_startup = 1
"let g:chromatica#libclang_path = '/usr/lib/libclang.so'
"let g:chromatica#responsive_mode = 1
"let g:chromatica#highlight_feature_level = 0


let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1



let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1

"let g:move_key_modifier = 'C'

set background=dark "темный цвет терминала

"возможность использовать команды при русской раскладке
set langmap=Ж:,йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,э',яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,ё`,ЯZ

"при поиске помечать все найденные строки
set hlsearch

"при поиске перескакивать на найденный текст в процессе набора строки
set incsearch


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on             "  включить подсветку синтаксиса.
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

"set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"mapping
map <C-n> :NERDTreeToggle<CR>
