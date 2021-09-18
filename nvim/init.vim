set nocompatible            " disable compatibility to old-time vi
set ignorecase
set smartcase              " case insensitive 
set mouse=v                 " middle-click paste with 
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set spell                 " enable spell check (may need to download language package)
set number relativenumber
set nu rnu

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'agude/vim-eldar'
Plug 'alvan/vim-closetag'
Plug 'ThePrimeagen/vim-be-good'
Plug 'tpope/vim-surround'
Plug 'yueyoum/vim-linemovement'
Plug 'posva/vim-vue'
Plug 'sainnhe/gruvbox-material'
call plug#end()

if has('termguicolors')
  set termguicolors
endif
set background=dark
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_disable_italic_comment = 1
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_palette = 'mix'
colorscheme gruvbox-material
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff600-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-css'
  \ ]

nmap <silent> gd <Plug>(coc-definition)
nmap <F2> <Plug>(coc-rename)

let NERDSpaceDelims=1

inoremap jk <ESC>
nmap <C-b> :NERDTreeToggle<CR>
vmap <C-c> <plug>NERDCommenterToggle
nmap <C-c> <plug>NERDCommenterToggle
let g:NERDCustomDelimiters={
	\ 'javascript': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
  \ 'html': { 'left': '<!-- ', 'right': '-->', 'leftAlt': '/*', 'rightAlt': '*/' },
  \ 'scss': { 'left': '//' },
  \ 'css': { 'left': '//' },
\}

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinPos = "right"
autocmd BufEnter * NERDTreeMirror

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

let g:linemovement_up="<S-Up>"
let g:linemovement_down="<S-Down>"

nnoremap <CR> :noh<CR><CR>
" Indent after enter when cursor is in braces
inoremap <expr> <CR> InsertMapForEnter()
function! InsertMapForEnter()
    if pumvisible()
        return "\<C-y>"
    elseif strcharpart(getline('.'),getpos('.')[2]-1,1) == '}'
        return "\<CR>\<Esc>O"
    elseif strcharpart(getline('.'),getpos('.')[2]-1,2) == '</'
        return "\<CR>\<Esc>O"
    else
        return "\<CR>"
    endif
endfunction

" nerdcommenter
let g:SynDebug = 0
map <leader>cd :call ToggleDebug()<CR>
imap <leader>ci <SPACE><BS><ESC>:call Comment('Insert')<cr>
map <leader>ca :call Comment('AltDelims')<cr>
xmap <leader>c$ :call Comment('ToEOL', 'x')<cr>
nmap <leader>c$ :call Comment('ToEOL', 'n')<cr>
xmap <leader>cA :call Comment('Append', 'x')<cr>
nmap <leader>cA :call Comment('Append', 'n')<cr>
xmap <leader>cs :call Comment('Sexy', 'x')<cr>
nmap <leader>cs :call Comment('Sexy', 'n')<cr>
xmap <leader>ci :call Comment('Invert', 'x')<cr>
nmap <leader>ci :call Comment('Invert', 'n')<cr>
xmap <leader>cm :call Comment('Minimal', 'x')<cr>
nmap <leader>cm :call Comment('Minimal', 'n')<cr>
xmap <leader>c<space> :call Comment('Toggle', 'x')<cr>
nmap <leader>c<space> :call Comment('Toggle', 'n')<cr>
xmap <leader>cl :call Comment('AlignLeft', 'x')<cr>
nmap <leader>cl :call Comment('AlignLeft', 'n')<cr>
xmap <leader>cb :call Comment('AlignBoth', 'x')<cr>
nmap <leader>cb :call Comment('AlignBoth', 'n')<cr>
xmap <leader>cc :call Comment('Comment', 'x')<cr>
nmap <leader>cc :call Comment('Comment', 'n')<cr>
xmap <leader>cn :call Comment('Nested', 'x')<cr>
nmap <leader>cn :call Comment('Nested', 'n')<cr>
xmap <leader>cu :call Comment('Uncomment', 'x')<cr>
nmap <leader>cu :call Comment('Uncomment', 'n')<cr>
xmap <leader>cy :call Comment('Yank', 'x')<cr>
nmap <leader>cy :call Comment('Yank', 'n')<cr>
let g:NERDCreateDefaultMappings=0
let g:NERDSpaceDelims=1
let g:NERDCustomDelimiters = {'pug': { 'left': '//-', 'leftAlt': '//' }}
function! ToggleDebug()
  let g:SynDebug = !g:SynDebug
  echo 'Syntax Debug Mode: '.g:SynDebug
endfunction
function! Comment(...) range
  let mode = a:0
  let type = a:1
  let ft = &ft
  let stack = synstack(line('.'), col('.'))
  if g:SynDebug
    echo ft
    echo map(stack, 'synIDattr(v:val, "name")')
  endif
  if ft == 'vue'
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        let syn = tolower(syn)
        if g:SynDebug
          echo syn
        endif
        exe 'setf '.syn
      endif
    endif
  endif
  if type == 'AltDelims'
    exe "normal \<plug>NERDCommenterAltDelims"
  elseif type == 'Insert'
    call NERDComment('i', "insert")
  else
    exe 'silent '.a:firstline.','.a:lastline.'call NERDComment(mode, type)'
  endif
  if g:SynDebug
    echo &ft
  endif
  exe "setf ".ft
endfunction

let g:ft = ''
function! NERDCommenter_before()
  if &ft == 'vue'
    let g:ft = 'vue'
    let stack = synstack(line('.'), col('.'))
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        exe 'setf ' . substitute(tolower(syn), '^vue_', '', '')
      endif
    endif
  endif
endfunction
function! NERDCommenter_after()
  if g:ft == 'vue'
    setf vue
    let g:ft = ''
  endif
endfunction
