"	     _   _ _____ _____     _____ __  __
"	    | \ | | ____/ _ \ \   / /_ _|  \/  |
"	   |  \| |  _|| | | \ \ / / | || |\/| |
"	  | |\  | |__| |_| |\ V /  | || |  | |
"	 |_| \_|_____\___/  \_/  |___|_|  |_|
"
"
"	     ________                    ___   __
"	   (_) | /  \                  /   \ /  \
"	      ||    | , _|_  _   ,_     __/|    |
"	   _ ||    |/ \_|  |/  /  |      \|    |
"	 (_/  \__/  \/ |_/|__/   |_/\___/ \__/
"
"
filetype plugin indent on "Включает определение типа файла, загрузку соответствующих ему плагинов и файлов отступов
syntax enable "Включает подсветку синтаксиса
set encoding=utf-8 "Ставит кодировку UTF-8
set nocompatible "Отключает обратную совместимость с Vi
set iminsert=0
set imsearch=0
set relativenumber
set number
set ruler
set confirm
set termguicolors
set wrap linebreak nolist
set whichwrap+=<,>,h,l,[,]
" set showbreak=└\
set showbreak=↪>
" let &showbreak = '↪> '
" set textwidth=80
set sidescroll=1
" set scrolloff=45
set scrolloff=2
set ttimeoutlen=10
set listchars=tab:··
set tabstop=8
set wildmenu
set list
set smarttab
set ignorecase
set smartcase
set incsearch
" set spell
set spelllang=en_us,ru_yo
set dictionary+=/var/lib/dictionaries-common/aspell/aspell-ru
set complete+=k
set matchpairs+=<:>,«:»
set autoread
set autoindent
" set autochdir
set noshowmode
set termguicolors
set path+=**
set mouse=a
set mouseshape=cross
set encoding=UTF-8
" set viminfo+=n~/.local/share/nvim/viminfo
nnoremap <SPACE> <Nop>
let mapleader="\<Space>"
" imap <M-Esc> [
" imap <M-C-]> ]
set viewoptions=cursor,folds,slash,unix
set completeopt=menuone
set statusline=%m\│%R\│%{StatusLineFilename()}%<%h%{VarExists('b:gzflag','\ [GZ]')}%h%=%-14.(%l,%c%V%)\ %P││
function VarExists(var, val)
    if exists(a:var) | return a:val | else | return '' | endif
endfunction
let b:gzflag = 1
unlet b:gzflag
fun! StatusLineFilename()
  if (&ft ==? 'flipdir') | return (expand('%f')) | endif
  return substitute(expand('%'), '^' . getcwd() . '/\?', '', 'i')
endfun
" let g:skipview_files = ['*\.vim']

"augroup VCenterCursor
"  au!
"  au BufEnter,WinEnter,WinNew,VimResized *,*.*
"        \ let &scrolloff=winheight(win_getid())/2
"augroup END

function! PackInit() abort
  packadd minpac

  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})
" Additional plugins here.
  call minpac#add('jiangmiao/auto-pairs')
  " call minpac#add('mg979/vim-visual-multi')
  call minpac#add('tpope/vim-sensible')
  " call minpac#add('dylanaraps/fff.vim')
  " call minpac#add('yuttie/comfortable-motion.vim')
  " call minpac#add('psliwka/vim-smoothie')
  " call minpac#add('morhetz/gruvbox')
  call minpac#add('lifepillar/vim-gruvbox8',{'type': 'opt'})
  call minpac#add('logico/typewriter-vim')
  call minpac#add('fxn/vim-monochrome', {'type': 'opt'})
  call minpac#add('ErichDonGubler/vim-sublime-monokai', {'type': 'opt'})
  call minpac#add('mbbill/undotree')
  call minpac#add('itchyny/lightline.vim', {'type': 'opt'})
  call minpac#add('voldikss/vim-floaterm')
  call minpac#add('tpope/vim-endwise')
  " call minpac#add('tpope/vim-rsi')
  call minpac#add('tpope/vim-surround')
  call minpac#add('tpope/vim-commentary')
  call minpac#add('tpope/vim-repeat')
  call minpac#add('vim-scripts/restore_view.vim')
  call minpac#add('kshenoy/vim-signature')
  call minpac#add('junegunn/goyo.vim')
  call minpac#add('easymotion/vim-easymotion')
  call minpac#add('justinmk/vim-sneak')
  call minpac#add('edluffy/hologram.nvim')
  call minpac#add('dhruvasagar/vim-table-mode')
  " call minpac#add('vimwiki/vimwiki')
  call minpac#add('liuchengxu/vim-which-key')
  call minpac#add('marklcrns/vim-smartq', {'type': 'opt'})
  call minpac#add('shushcat/vim-minimd', {'type': 'opt'})
  call minpac#add('JMcKiern/vim-shoot')
  " call minpac#add('BeomjoonGoh/vim-easy-term')
  " call minpac#add('justinmk/vim-dirvish')
  " call minpac#add('yegappan/mru')
  call minpac#add('chrisbra/csv.vim')
  call minpac#add('fladson/vim-kitty')
  call minpac#add('jacekd/vim-iawriter', {'type': 'opt'})
	" call minpac#add('lyokha/vim-xkbswitch')
  call minpac#add('junegunn/limelight.vim')
  call minpac#add('ojroques/vim-scrollstatus')
  call minpac#add('axvr/org.vim')
  call minpac#add('edluffy/hologram.nvim')
  " call minpac#add('kmonad/kmonad-vim')
  call minpac#add('vim/killersheep')
	call minpac#add('jpaulogg/vim-flipdir')
  call minpac#add('ryanoasis/vim-devicons')
  
"  call minpac#add('vim-jp/syntax-vim-ex')
"  call minpac#add('tyru/open-browser.vim')
"  call minpac#add('junegunn/fzf.vim')
"  call minpac#add('junegunn/fzf', { 'do': { -> fzf#install() } })
"  call minpac#add('mcchrish/nnn.vim')
"  call minpac#add('vim-airline/vim-airline')
"  call minpac#add('vim-airline/vim-airline-themes')
"  call minpac#add('andymass/vim-matchup')
"  call minpac#add('tpope/vim-vinegar')
endfunction

" Plugin settings here.
packadd vim-minimd
packadd vim-smartq
packadd vim-flipdir
" Define user commands for updating/cleaning the plugins.
" Each of them calls PackInit() to load minpac and register
" the information of plugins, then performs the task.
command! PackUpdate call PackInit() | call minpac#update()
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus call minpac#status()

command! MToggle SignatureToggleSigns
command! MRefresh SignatureRefresh

let g:XkbSwitchEnabled = 1

"source $HOME/.config/nvim/themes/monokai.vim
" colorscheme monochrome
colorscheme typewriter
" colorscheme typewriter-night
" colorscheme sublimemonokai
" colorscheme gruvbox
" colorscheme gruvbox8_soft
" let g:gruvbox_transparent_bg = '0'
" let g:gruvbox_termcolors = '256'
" let g:gruvbox_italic = '1'
" let g:gruvbox_contrast_dark = 'soft'
" nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
" nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
" nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>
" nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
" nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
" nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

function! Devicons_Filetype()"{{{
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction"}}}
function! Devicons_Fileformat()"{{{
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction"}}}

"      \ 'colorscheme': 'gruvbox',
"      \ 'colorscheme': 'sublimemonokai',
let g:lightline = {
      \ 'colorscheme': 'gruvbox8',
      \ 'mode_map': {
        \ 'n' : 'N',
        \ 'i' : 'I',
        \ 'R' : 'R',
        \ 'v' : 'V',
        \ 'V' : 'VL',
        \ "\<C-v>": 'VB',
        \ 'c' : 'C',
        \ 's' : 'S',
        \ 'S' : 'SL',
        \ "\<C-s>": 'SB',
        \ 't': 'T',
        \ },
      \ }
let g:lightline.separator = { 'left': "\ue0b8", 'right': "\ue0be" }
let g:lightline.subseparator = { 'left': "\ue0b9", 'right': "\ue0b9" }
let g:lightline.tabline_separator = { 'left': "\ue0bc", 'right': "\ue0ba" }
let g:lightline.tabline_subseparator = { 'left': "\ue0bb", 'right': "\ue0bb" }
let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_warnings = "\uf529"
let g:lightline#ale#indicator_errors = "\uf00d"
let g:lightline#ale#indicator_ok = "\uf00c"
let g:lightline_gitdiff#indicator_added = '+'
let g:lightline_gitdiff#indicator_deleted = '-'
let g:lightline_gitdiff#indicator_modified = '*'
let g:lightline_gitdiff#min_winwidth = '70'
let g:lightline#asyncrun#indicator_none = ''
let g:lightline#asyncrun#indicator_run = 'Running...'
let g:lightline.component_function = {
      \ 'gitbranch': 'Gitbranch',
      \ 'devicons_filetype': 'Devicons_Filetype',
      \ 'devicons_fileformat': 'Devicons_Fileformat',
      \ }
let g:lightline.active = {
        \ 'left': [ [ 'mode', 'gitbranch' ],
        \           [ 'readonly', 'modified', 'filename' ] ],
        \ 'right': [ [ 'lineinfo' ],
		\           [ 'percent' ],
		\           [ 'fileencoding', 'devicons_filetype', 'devicons_fileformat' ] ],
        \ }
let g:lightline.tabline = {
        \ 'left': [ [ 'vim_logo', 'tabs' ] ],
        \ 'right': [ [ 'gitbranch' ],
        \ [ 'gitstatus' ] ]
        \ }
let g:lightline.tab = {
        \ 'active': [ 'modified', 'tabnum', 'filename' ],
        \ 'inactive': [ 'modified', 'tabnum', 'filename' ] }

"let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
"let g:Powerline_symbols='unicode' "Поддержка unicode
"let g:airline_theme = 'gruvbox'
"let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
"let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
"let g:airline#extensions#xkblayout#enabled = 0 "Про это позже расскажу

" set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾
set fillchars=fold:\ ,vert:\│,msgsep:‾

" WAYLAND CLIPBOARD SUPPORT
"xnoremap "+y y:call system("wl-copy", @")<cr>  
"nnoremap "+p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p  
"nnoremap "*p :let @"=substitute(system("wl-paste --no-newline --primary"), '<C-v><C-m>', '', 'g')<cr>p

let &t_ZH="\033[3m"
let &t_ZR="\033[23m"
let &t_Ts="\033[9m"
let &t_Te="\033[29m"
let &t_Cs="\033[6m"
let &t_Ce="\033[24m"
let &t_Cs="\033[4:3m"
let &t_Ce="\033[4:0m"
hi! Comment cterm=italic
hi! Comment gui=italic
hi! DiffDelete gui=strikethrough
hi! Normal ctermbg=NONE guibg=NONE
" hi def htmlStrike              term=strikethrough cterm=strikethrough gui=strikethrough
" hi! Cursor          ctermfg=160               guibg=#BC312F
" hi! Cursor     ctermbg=160 ctermfg=160 guifg=#bc3130 guibg=#BC3130
hi! Cursor     ctermbg=red ctermfg=red guifg=#bc3130 guibg=#bc3130
" hi! iCursor ctermbg=160 ctermfg=160 guibg=#BC312F guifg=#BC312F
" hi! CursorLine ctermbg=7 guibg=Grey90
hi! CursorLine ctermbg=7 guibg=Grey90
"highlight EndOfBuffer ctermfg=black ctermbg=black
"highlight LineNr guibg=NONE ctermbg=NONE

"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_left_alt_sep = ''

"function! FzyCommand(choice_command, vim_command)
"  try
"    let output = system(a:choice_command . " | fzy ")
"  catch /Vim:Interrupt/
"    " Swallow errors from ^C, allow redraw! below
"  endtry
"  redraw!
"  if v:shell_error == 0 && !empty(output)
"    exec a:vim_command . ' ' . output
"  endif
"endfunction

function! FzyCommand(choice_command, vim_command) abort
    let l:callback = {
                \ 'window_id': win_getid(),
                \ 'filename': tempname(),
                \  'vim_command':  a:vim_command
                \ }

    function! l:callback.on_exit(job_id, data, event) abort
        bdelete!
        call win_gotoid(self.window_id)
        if filereadable(self.filename)
            try
                let l:selected_filename = readfile(self.filename)[0]
                exec self.vim_command . l:selected_filename
            catch /E684/
            endtry
        endif
        call delete(self.filename)
    endfunction

    botright 10 new
    let l:term_command = a:choice_command . ' | fzy > ' .  l:callback.filename
    silent call termopen(l:term_command, l:callback)
    setlocal nonumber norelativenumber
    startinsert
endfunction

" Vertical split (NERDtree style).
" let g:fff#split = "30vnew"command! Rg FloatermNew --width=0.8 --height=0.8 rg

"nnoremap <silent> gc Xp

command! -nargs=+ GFind cexpr system('gg ' . shellescape('<args>'))
"let g:neovide_fullscreen=v:true
" highlight CursorLineNR ctermbg=90 guibg=#e5e5e5
let g:neovide_transparency=0.95
let g:neovide_cursor_vfx_mode = "torpedo"
let g:neovide_cursor_trail_length=0.8
let g:neovide_cursor_antialiasing=v:true
let g:neovide_cursor_animate_in_insert_mode=v:true
"set guifont=UbuntuMonoNerdFont:h17
" set guifont=FiraCodeNerdFont-Regular:h15
" set guifont=iA\ Writer\ Duo\ S:h15
set guifont=Writer:h15
" set guifont=True\ Typewriter\ PolyglOTT:h17
" set guifont=GNU\ Typewriter:h15
" set guifont=Comfortaa:h15
" set guifont=1942\ report:h17
" set guifont=SF\ Mono:h15
" set langmap=DKTE;ETDK,dkte;etdk
" set langmap=DKTE;ETDK,dkte;etdk
set langmap=ХБУКЕНГШЖЗФЫВАПРОЛДЯЧСМИТЬ;QWERTYUIOPASDFGHJKLZXCVBNM,хбукенгшжзфывапролдячсмить;qwertyuiopasdfghjklzxcvbnm
" set langmap=ХБУКЕНГШЖЗФЫВАПРОЛДЯЧСМИТЬ;QWDRKYUIOPASTFGHJELZXCVBNM,хбукенгшжзфывапролдячсмить;qwdrkyuiopastfghjelzxcvbnm
" set keymap=gb-mmk4
" set keymap=ru-unipunct
language en_US
noremap e k
noremap k t
noremap t e
noremap E K
noremap K T
noremap T E

" inoremap  <Up>     <NOP>
" inoremap  <Down>   <NOP>
" inoremap  <Left>   <NOP>
" inoremap  <Right>  <NOP>
" noremap   <Up>     <NOP>
" noremap   <Down>   <NOP>
" noremap   <Left>   <NOP>
" noremap   <Right>  <NOP>

"inoremap { {}<Esc>ha
"inoremap ( ()<Esc>ha
"inoremap [ []<Esc>ha
"inoremap " ""<Esc>ha
"inoremap ' ''<Esc>ha
"inoremap ` ``<Esc>ha
" inoremap « «»<Esc>ha
inoremap « «»<Left>
inoremap <F5> <C-\><C-O>:setlocal spelllang=en_us spell! spell?<CR>

nnoremap <Tab>   >>
nnoremap <S-Tab> <<
vnoremap <Tab>   >><Esc>gv
vnoremap <S-Tab> <<<Esc>gv

nnoremap Y y$

" imap <leader>g <C-^>

let g:table_mode_corner='|'
let g:table_mode_corner_corner='+'
"│
" "let g:nnn#layout = { 'right': '~30%' } " or left, up, down
" " Floating window (neovim latest and vim with patch 8.2.191)
" let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }
nmap <leader>v :F<CR>
nmap <leader>m :UndotreeToggle<CR>
nmap <leader>s :w<CR>
nmap <leader>q :q<CR>
map <leader>c :Commentary<CR>
nnoremap <leader>d :buffers<cr>:b<space>
nnoremap <leader>n :call FzyCommand('rg --files .', ':e')<cr>
nnoremap H     ^
nnoremap J     }
nnoremap E     {
nnoremap L     $
nmap <leader>х :q<CR>
nmap <leader>ы :w<CR>
cmap :х :q
cmap :б :w
nmap Р     ^
nmap О     {
nmap Л     }
nmap Д     $
nmap <Control>у call smoothie#downwards()
" nnoremap <leader><tab> :b#<cr>
" map <leader>b :b<Space><Tab>

"Tab to switch to next open buffer
" nnoremap <Tab> :bnext<cr>
"Shift + Tab to switch to previous open buffer
" nnoremap <S-Tab> :bprevious<cr>
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
nnoremap <leader><tab> :b#<cr>
nnoremap <leader><leader>v <C-^>

nnoremap Q q
" nnoremap q :qall!<CR>
let g:smartq_exclude_buftypes= [
      \ 'flipdir', 'help'
      \ ]
" autocmd bufenter * if (winnr("$") == 1 && exists("b:")) | q | endif

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" inoremap je <Esc>^`
" inoremap ej <Esc>^`
imap <C-L> <Esc>
" imap ;; <Esc>

autocmd FileType help wincmd L

" nnoremap <Leader>cc :term<CR>A
" nnoremap <Leader>cs :split<CR>:wincmd j<CR>:term<CR>A
" nnoremap <Leader>ct :tabnew<CR>:term<CR>A

nnoremap <Leader>х :SmartQ<CR>
nnoremap х :SmartQ<CR>


let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
" nmap s <Plug>(easymotion-overwin-f)
"my nmap <Leader>f <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
" nmap S <Plug>(easymotion-overwin-f2)
" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>e <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>f <Plug>(easymotion-s2)
" nnoremap <RightMouse> <LeftRelease><Plug>(easymotion-k)
" nnoremap <LeftMouse> <LeftRelease><Plug>(easymotion-j)
nnoremap <MiddleMouse> <LeftMouse><MiddleMouse>

nmap s <Plug>Sneak_s
nmap S <Plug>Sneak_S
let g:sneak#use_ic_scs = 1
" let g:sneak#s_next = 1
" <80><fd>-<80><fd>-
func LEAPL()
	<Plug>Sneak_S
	if input == <RightRelease>
		v
	else
		<Plug>Sneak_S
	endif
endfunc
func LEAPR()
	<Plug>Sneak_S
	if input == <LeftRelease>
		v
	else
		<Plug>Sneak_s
	endif
endfunc
" nmap <LeftMouse> :call LEAPR()<CR>
" nmap <RightMouse> :call LEAPL()<CR>
nmap <LeftMouse> <Plug>Sneak_s
nmap <RightMouse> <Plug>Sneak_S
" if !a:repeatmotion && !sneak#is_sneaking() | let self._search_options .= 's' | endif
" let g:sneak#label = 1


ino <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>
nmap gw dawTp
nmap gW daWbP
vnoremap <C-X> <Esc>`.``gvP``P
" nnoremap <silent> gl "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohlsearch<CR>
" nnoremap <silent> gr "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o>/\w\+\_W\+<CR><c-l>:nohlsearch<CR>


nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
"map <leader>j :Files<CR>
"map <leader>j :call FzyCommand("fd -t f .", ":vs")<CR>
"nnoremap <leader>j :call FzyCommand('fd -t f .', ':e')<cr>

" let vimDir = '$XDG_DATA_HOME/nvim/undo'
" if has("persistent_undo")
"     let myUndoDir = expand(vimDir)
" 	let &undodir = myUndoDir
"     " set undodir=.vundo
"     set undofile
" endif
"

" guard for distributions lacking the persistent_undo feature.
if has('persistent_undo')
    " define a path to store persistent_undo files.
    let target_path = expand('~/.local/share/nvim/.vundo')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call system('mkdir -p ' . target_path)
    endif

    " point Vim to the defined undo directory.
    let &undodir = target_path

    " finally, enable undo persistence.
    set undofile
endif

autocmd FileType pascal setlocal commentstring=(*\ %s\ *)
autocmd FileType postscr setlocal commentstring=%\ %s

"FloatermNew nnn
"nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
"nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
highlight! link HelpBar Normal
highlight! link HelpStar Normal
"let g:netrw_liststyle = 3
"let g:loaded_netrw = 1
"let g:loaded_netrwPlugin = 1
" nmap <Leader>f :set scrolloff=45 nowrap cursorline colorcolumn=80 sidescrolloff=999 | :Goyo
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" Activate FOCUS mode with F12
" nmap <F12> :Goyo <bar> Limelight!!<CR>"
" Change the cursor from block to i-beam in INSERT mode
" let &t_SI = "\e[5 q"
" let &t_EI = "\e[1 q"
" augroup myCmds
"   au!
"   autocmd VimEnter * silent !echo -ne "\e[1 q"
" augroup END
" autocmd! User GoyoEnter Limelight
" autocmd! User GoyoLeave Limelight!

" function! s:goyo_enter()
" 				set nowrap
" 				set scrolloff=45
" 				set cursorline
" 				set colorcolumn=80,100
" 				set sidescrolloff=999
" 				Limelight
" endfunction
" function! s:goyo_leave()
" 				set wrap
" 				set scrolloff=0
" 				set nocursorline
" 				set colorcolumn=0
" 				set sidescrolloff=1
" 				Limelight!
" endfunction
" autocmd! User GoyoEnter nested call <SID>goyo_enter()
" autocmd! User GoyoEnter nested call <SID>goyo_leave()

function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
  " set nowrap
  " set scrolloff=45
	set cursorline
  set colorcolumn=80,100
  " set sidescrolloff=999
  " set sidescrolloff=10
	Limelight
endfunction

function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
  " if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)' && &ft != 'flipdir')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
  " set wrap
  " set scrolloff=0
	set nocursorline
  " set colorcolumn=0
  " set sidescrolloff=1
	Limelight!
endfunction

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()

" function s:Hidedot()
" 	gh :silent keeppatterns g@\v/\.[^\/]+/?$@d _<cr>:setl cole=3<cr>
" endfunction
" autocmd FileType dirvish nnoremap <silent><buffer> gh :silent keeppatterns g@\v/\.[^\/]+/?$@d _<cr>:setl cole=3<cr>
" function! GitBranch()
"   return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
" endfunction
" function! StatuslineGit()
"   let l:branchname = GitBranch()
"   return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
" endfunction

if (g:colors_name ==? 'typewriter-night')
" Color name (:help cterm-colors) or ANSI code
				let g:limelight_conceal_ctermfg = 'gray'
				let g:limelight_conceal_ctermfg = 235
				let g:limelight_conceal_guifg = 'DarkGray'
				let g:limelight_conceal_guifg = '#555555'
else
" Color name (:help gui-colors) or RGB color
				let g:limelight_conceal_guifg = 'DarkGray'
				let g:limelight_conceal_guifg = '#bcbcbc'
				let g:limelight_conceal_ctermfg = 'gray'
				let g:limelight_conceal_ctermfg = 240
endif
"StatusLine     xxx cterm=bold,reverse gui=bold,reverse
"StatusLineNC   xxx cterm=reverse gui=reverse

" StatusLine
" let g:mode_colors = {
"       \ 'n':  'StatusLineSection',
"       \ 'v':  'StatusLineSectionV',
"       \ '': 'StatusLineSectionV',
"       \ 'i':  'StatusLineSectionI',
"       \ 'c':  'StatusLineSectionC',
"       \ 'r':  'StatusLineSectionR',
"       \ }

" fun! StatusLineRenderer()
"   let hl = '%#' . get(g:mode_colors, tolower(mode()), g:mode_colors.n) . '#'

"   return hl
"         \ . (&modified ? ' + │' : '')
"         \ . ' %{StatusLineFilename()} %#StatusPowerline#%{PrettySign()}%#StatusLine#%='
"         \ . '%#StatusPowerline#%{PrettySign()}'
"         \ . hl
"         \ . ' %{&fileencoding?&fileencoding:&encoding} │ %{WebDevIconsGetFileTypeSymbol()} │'
"         \ . ' %p%% %l:%c %R'
" endfun

" fun! StatusLineFilename()
"   if (&ft ==? 'flipdir') | return '*' | endif
"   return substitute(expand('%'), '^' . getcwd() . '/\?', '', 'i')
" endfun
" " || g:currentmode[mode()] ==# 'V·Block' || get(g:currentmode, mode(), '') ==# 't'
" fun! PrettySign()
"   if (mode() =~# '\v(n|no)')
"     exe 'hi StatusPowerline   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#a89984'
"   elseif (mode() =~# '\v(v|V|)')
"     exe 'hi StatusPowerline   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#a074c4'
"   elseif (mode() =~# '\v(c)')
"     exe 'hi StatusPowerline   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#db7b55'
"   elseif (mode() =~# '\v(i)')
"     exe 'hi StatusPowerline   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#9fca56'
"   elseif (mode() =~# '\v(r|R)')
"     exe 'hi StatusPowerline   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#ed3f45'
"   else
"     exe 'hi StatusPowerline   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#a89984'
"   endif
"   return ''
" endfun

" fun! <SID>StatusLineHighlights()
"   hi StatusLine         ctermbg=8  guibg=#313131 ctermfg=15 guifg=#3c3836
"   hi StatusLineNC       ctermbg=0  guibg=#313131 ctermfg=8  guifg=#999999
"   hi StatusLineSection  ctermbg=8  guibg=#a89984 ctermfg=0  guifg=#333333
"   hi StatusLineSectionV ctermbg=11 guibg=#a074c4 ctermfg=0  guifg=#000000
"   hi StatusLineSectionI ctermbg=10 guibg=#9fca56 ctermfg=0  guifg=#000000
"   hi StatusLineSectionC ctermbg=12 guibg=#db7b55 ctermfg=0  guifg=#000000
"   hi StatusLineSectionR ctermbg=12 guibg=#ed3f45 ctermfg=0  guifg=#000000

"   hi StatusPowerline    ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#a89984
"   hi StatusPowerlineV   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#a074c4
"   hi StatusPowerlineI   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#9fca56
"   hi StatusPowerlineC   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#db7b55
"   hi StatusPowerlineR   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#ed3f45
" endfun

" call <SID>StatusLineHighlights()

" " only set default statusline once on initial startup.
" " ignored on subsequent 'so $MYVIMRC' calls to prevent
" " active buffer statusline from being 'blurred'.
" if has('vim_starting')
"   let &statusline = ' %{StatusLineFilename()}%= %l:%c '
" endif

" augroup vimrc
"   au!
"   " show focussed buffer statusline
"   au FocusGained,VimEnter,WinEnter,BufWinEnter *
"     \ setlocal statusline=%!StatusLineRenderer()

"   " show blurred buffer statusline
"   au FocusLost,VimLeave,WinLeave,BufWinLeave *
"     \ setlocal statusline&

"   " restore statusline highlights on colorscheme update
"   au Colorscheme * call <SID>StatusLineHighlights()
" augroup END
" TabLine
" let g:mode_colors = {
"       \ 'n':  'TabLineSection',
"       \ 'v':  'TabLineSectionV',
"       \ '': 'TabLineSectionV',
"       \ 'i':  'TabLineSectionI',
"       \ 'c':  'TabLineSectionC',
"       \ 'r':  'TabLineSectionR',
"       \ }

" fun! TabLineRenderer()
"   let hl = '%#' . get(g:mode_colors, tolower(mode()), g:mode_colors.n) . '#'

"   return hl
"         \ . (&modified ? ' + │' : '')
"         \ . ' %#TabPowerline# %#TabLine#%= '
"         \ . ''
"         \ . hl
" endfun

" " fun! TabPrettySign()
" "   if (mode() =~# '\v(n|no)')
" "     exe 'hi TabPowerline   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#a89984'
" "   elseif (mode() =~# '\v(v|V|)')
" "     exe 'hi TabPowerline   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#a074c4'
" "   elseif (mode() =~# '\v(c)')
" "     exe 'hi TabPowerline   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#db7b55'
" "   elseif (mode() =~# '\v(i)')
" "     exe 'hi TabPowerline   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#9fca56'
" "   elseif (mode() =~# '\v(r|R)')
" "     exe 'hi TabPowerline   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#ed3f45'
" "   else
" "     exe 'hi TabPowerline   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#a89984'
" "   endif
" "   return ''
" " endfun

" fun! <SID>TabLineHighlights()
"   hi TabLine         ctermbg=8  guibg=#313131 ctermfg=15 guifg=#3c3836
"   hi TabLineNC       ctermbg=0  guibg=#313131 ctermfg=8  guifg=#999999
"   hi TabLineSection  ctermbg=8  guibg=#a89984 ctermfg=0  guifg=#333333
"   hi TabLineSectionV ctermbg=11 guibg=#a074c4 ctermfg=0  guifg=#000000
"   hi TabLineSectionI ctermbg=10 guibg=#9fca56 ctermfg=0  guifg=#000000
"   hi TabLineSectionC ctermbg=12 guibg=#db7b55 ctermfg=0  guifg=#000000
"   hi TabLineSectionR ctermbg=12 guibg=#ed3f45 ctermfg=0  guifg=#000000

"   hi TabPowerline    ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#a89984
"   hi TabPowerlineV   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#a074c4
"   hi TabPowerlineI   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#9fca56
"   hi TabPowerlineC   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#db7b55
"   hi TabPowerlineR   ctermbg=8  guibg=#3c3836 ctermfg=0  guifg=#ed3f45
" endfun

" call <SID>TabLineHighlights()

" " only set default statusline once on initial startup.
" " ignored on subsequent 'so $MYVIMRC' calls to prevent
" " active buffer statusline from being 'blurred'.
" if has('vim_starting')
"   let &statusline = ' %f '
" endif

" augroup tvimrc
"   au!
"   " show focussed buffer statusline
"   au FocusGained,VimEnter,WinEnter,BufWinEnter *
"     \ setlocal tabline=%!TabLineRenderer()

"   " show blurred buffer statusline
"   au FocusLost,VimLeave,WinLeave,BufWinLeave *
"     \ setlocal tabline&

"   " restore statusline highlights on colorscheme update
"   au Colorscheme * call <SID>TabLineHighlights()
" augroup END
