nmap <f4> :CocCommand clangd.switchSourceHeader<cr>
nmap <silent> <A-f> :w<return> :!clang-format -i "%"<return> :rewind<cr>
