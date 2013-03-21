filetype off
call pathogen#infect()
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
filetype on
filetype plugin on
filetype indent on
syntax on

set hidden
set showmode
set ignorecase
set smartcase
set hlsearch
set incsearch
inoremap jk <Esc>
inoremap kj <Esc>
set ls=2
set statusline=%t,%l/%L%y%m%{fugitive#statusline()}
set rnu
set directory^=$HOME/.vim_swap//   "put all swap files together in one place
set backupdir^=$HOME/.vim_backup//
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
"solarized settings
syntax enable
set background=dark
colorscheme solarized
highlight clear SignColumn
"number increment function from vim.wikia.com
function! AddSubtract(char, back)
  let pattern = &nrformats =~ 'alpha' ? '[[:alpha:][:digit:]]' : '[[:digit:]]'
  call search(pattern, 'cw' . a:back)
  execute 'normal! ' . v:count1 . a:char
  silent! call repeat#set(":\<C-u>call AddSubtract('" .a:char. "', '" .a:back. "')\<CR>")
endfunction
nnoremap <silent>         <C-a> :<C-u>call AddSubtract("\<C-a>", '')<CR>
nnoremap <silent> <Leader><C-a> :<C-u>call AddSubtract("\<C-a>", 'b')<CR>
nnoremap <silent>         <C-x> :<C-u>call AddSubtract("\<C-x>", '')<CR>
nnoremap <silent> <Leader><C-x> :<C-u>call AddSubtract("\<C-x>", 'b')<CR>

"Easier window movement
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-l> <C-w>l
nmap <silent> <C-h> <C-w>h

"ctrlp function mapping
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"ctags
map <Leader>ct :!ctags -R --exclude=.git --exclude=logs --exclude=doc .<CR>

"tagbar
nmap <F8> :TagbarToggle<CR>

"Ack
nmap <leader>a/ :Ack!<space>
nmap <leader>a* :Ack! -w <C-R><C-W><space>

"Easily edit and source vim
nmap <silent> <leader>ev :tabnew $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"keep visual selection when indenting
vnoremap < <gv
vnoremap > >gv

" FixWhitespace
nnoremap <leader>wh :FixWhitespace<cr>

"Get rid of highlighting after search with space
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"fold method
nnoremap <leader>fi :set foldmethod=indent<CR>
nnoremap <leader>fm :set foldmethod=manual<CR>

"get rid of binding.pry and debugger from all current buffers or open windows
nnoremap <leader>ddb :bufdo %g/^ *debugger\\|^ *binding.pry/d
nnoremap <leader>ddw :windo %g/^ *debugger\\|^ *binding.pry/d

"Stolen from Gary Bernhardt *****
" convenient current directory expansion
cnoremap %% <C-R>=expand('%:h').'/'<cr>
"make the current window big, but leave others in context
set winwidth=84
" We have to have a winheight bigger than we want to set winminheight. But if
 " we set winheight to be huge before winminheight, the winminheight set will
 " fail.
 set winheight=5
 set winminheight=5
 set winheight=999
