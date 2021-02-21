let g:lightline = {
    \'active': {
        \'left': [['mode', 'paste'], [], ['relativepath','modified']],
        \'right': [['kitestatus'], ['filetype', 'percent','lineinfo'], ['gitbranch']]
    \},
    \'inactive': { 'left': [['inactive'], ['relativepath']],
        \'right': [['bufnum']]
    \},
    \'component': {
        \'bufnum': '%n',
        \'inactive': 'inactive'
    \ }, 
    \'component_function': {
        \'gitbranch': 'fugitive#head',
        \'kitestatus':'kite#statusline'
    \},
    \'colorscheme':'gruvbox',
    \'subseparator': {
        \'left': '',
        \'right': ''
    \}
\}

" DOPLETE
"let g:deoplete#enable_at_startup=1
"let g:python3_host_prog='C:/Users/manol/AppData/Local/Programs/Python/Python39-32'



" NERDTree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" ULTISNIPS
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" vim fugitive
command! -bang -nargs=? -complete=dir GFiles
    \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
    \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

set diffopt+=vertical
 
" FZF
let $FZF_DEFAULT_OPTS='--layout=reverse'

" ale
let g:ale_fixers = ['prettier', 'eslint']
let g:ale_fix_on_save = 1

" EMMET
let g:user_emmet_mode='a'
autocmd FileType html, css EmmetInstall

" DASHBOARD
 let g:dashboard_custom_header =<< trim END
 =================     ===============     ===============   ========  ========
 \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //
 ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||
 || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||
 ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||
 || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||
 ||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||
 || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||
 ||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||
 ||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||
 ||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||
 ||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||
 ||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||
 ||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||
 ||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||
 ||.=='    _-'                                                     `' |  /==.||
 =='    _-'                        N E O V I M                         \/   `==
\   _-'                                                                `-_   /
  `'' 
END


