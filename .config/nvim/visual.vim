set background=dark "темный цвет терминала
set hlsearch
syntax on
colorscheme safoclTheme " меням цветовую схему

if $COLORTERM == "truecolor"
    set termguicolors
endif

"colorscheme quantum     " меням цветовую схему

" указать цвет комментариев
highlight Comment ctermfg=darkgray

