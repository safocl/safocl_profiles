"возможность использовать команды при русской раскладке
set langmap=Ж:,йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,э',яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,ё`,ЯZ

"let g:move_key_modifier = 'C'

"при поиске перескакивать на найденный текст в процессе набора строки
set incsearch


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set nowrap              " не разрывать строку
"set backup              " создавать .bak файлы (по умолчанию <oldname>~)
set autoindent          " установить автоотступ

"set sidescroll=5        " прокрутка вправо/влево когда строка заежает за край и вы по ней ползаете
set listchars+=precedes:<,extends:>     " показывать символы > или < если есть, что слева/справа строки
set ignorecase          " игнорировать прописные/строчные при поиске

set number

"set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

filetype plugin on

let g:NERDCreateDefaultMapping=1

let g:python3_host_prog = '/usr/bin/python3'
let g:loaded_python_provider = 1


function! Formatonsave()
  let l:formatdiff = 1
  py3f /usr/share/clang/clang-format.py
  exec "CocDisable"
  exec "CocEnable"
endfunction

autocmd BufWritePre *.c,*.h,*.cc,*.cpp,*.hpp call Formatonsave()

