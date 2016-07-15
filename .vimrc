filetype on
filetype off
"We want the latest Vim settings/options.
set nocompatible
"Necessary for Vundle to compile"
set shell=/bin/zsh

so ~/.vim/plugins.vim

"Make backspace behave like every other editor.
set backspace=indent,eol,start
"The default is \, but a comma is much better.
let mapleader = ','
" No damn bells!
set noerrorbells visualbell t_vb=
" Automatically write the file when switching buffers.
set autowriteall
"Set our desired autocompletion matching.
set complete=.,w,b,u

" http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set nobackup
set nowritebackup
set noswapfile 

" Switch to paste mode using <F2>
set pastetoggle=<F2>


" === Visuals ===
    syntax enable
    colorscheme atom-dark

    "Use 256 colors. This is useful for Terminal Vim.
    set t_CO=256 
    "Set the default font family and size.
    set guifont=Fira\ Code:h17 
    ""We want pretty symbols, when available.
    set macligatures
    "We don't want Gui tabs.
    set guioptions-=e
    " set linespace=15 

    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R
    set guioptions-=e

    "" We'll fake a custom left padding for each window
    hi LineNr guibg=bg
    set foldcolumn=2
    hi foldcolumn guibg=bg
    hi vertsplit guibg=bg guifg=bg
    hi statusline guibg=bg
    hi statuslinenc guibg=bg

    " Set number on the left absolute
    set number
    " Set relative number line -> Combined with absolute number get both 
    set relativenumber

    " Convert tabs to 4 spaces
    filetype plugin indent on
    " show existing tab with 4 spaces width
    " :set tabstop=4
    " when indenting with '>', use 4 spaces width
    " :set shiftwidth=4
    " On pressing tab, insert 4 spaces
    " :set expandtab
    set tabstop=4 shiftwidth=4 expandtab
    
    " Shows invisible characters
    set list
    set listchars=tab:▸\ ,eol:¬
    set ruler
    set colorcolumn=80
    " Highlight the line the cursor is on
    set cursorline

" === Searching ===

    set incsearch " Incremental searching"
    set hlsearch " Highlight the results for a search using /
    set ignorecase smartcase


" === Split Management ===
    set splitbelow
    set splitright

    nmap <C-J> <C-W><C-J>
    nmap <C-K> <C-W><C-K>
    nmap <C-H> <C-W><C-H>
    nmap <C-L> <C-W><C-L>

    nmap <C-D-J> <C-W><J>
    nmap <C-D-K> <C-W><K>
    nmap <C-D-H> <C-W><H>
    nmap <C-D-L> <C-W><L>
    ""nmap <C-W> <C-W><C-W>


" === Commands ===

    :command! -nargs=1 Py3 execute ':silent !python3 '.<q-args>
    :command! -nargs=0 Py3 execute ':silent !python3 :echo expand("%:t")'. 
    "":com -nargs=0 Py3 !python3 :echo expand('%:t')
    "":com -nargs=1 Py3 !python3 <args>


" === MAPPING ==="

    " === NORMAL-MODE ===

    " Remove binding for up/down/left/right keys
    noremap <Up> <NOP>
    noremap <Down> <NOP>
    noremap <Left> <NOP>
    noremap <Right> <NOP>

    " Easy edit the ~/.vimrc file in a new tab
    nmap <Leader>ev :tabedit $MYVIMRC<cr>
    " Easy edit plugins
    nmap <Leader>epl :tabedit ~/.vim/plugins.vim<cr>
    " Easy edit snippets
    nmap <Leader>es :tabedit ~/.vim/snippets/


    " Toggle hlsearch
    let hlstate=0
    nnoremap <silent><Leader>/ :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<cr>

    " In NORMAL mode, quickly insert a line above or below
    nnoremap <C-j> o<esc>k
    nnoremap <C-k> O<esc>j

    " Keep search pattern at the center of the screen
    nnoremap <silent> n nzz
    nnoremap <silent> N Nzz
    nnoremap <silent> * *zz
    nnoremap <silent> # #zz
    nnoremap <silent> g* g*zz

    " Select the content of the line
    nnoremap <Leader>v ^v$

    " When the cursor is on a word, replace each instance of the entire word in
    " the file
    nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

    "" Add a shortcut for toggling NerdTree
    nmap <D-1> :NERDTreeToggle<cr>

    "" Search for tag
    " nmap <Leader>f :tag<space>

    " === VISUAL-MODE === 
    
    " Reselect visual block after indent/outdent
    vnoremap < <gv
    vnoremap > >gv


    " === INSERT-MODE ===

    " Use jk as a <Esc> alternative
    inoremap jk <Esc>
    inoremap kj <Esc>

    " === TERMINAL-MODE ===
    
    " tnoremap <Esc> <C-\><C-n>

" === Plugins ===

    " === CtrlP ===

        " Custom ignore files for CtrlP
        let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|DS_Store|.git|target\'
        " Move the CtrlP Window on top, results shown top-to-bottom
        let g:ctrlp_match_window  = 'top,order:ttb,min:1,max:30,results:30'

        let g:ctrlp_working_path_mode = 'ra'

        " Ignores typical MacOSX/Linux files
        set wildignore+=*/tmp/*,*.so,*.swp,*.zip

        "" Open CtrlP looking for functions/methods inside of the file
        nmap <C-R> :CtrlPBufTag<cr>
        nmap <D-e> :CtrlPMRUFiles<cr>
        nmap <D-p> :CtrlP<cr>

    " === NERDTree ===
    
        " Solve conflict for '-' keyboard between NERDTree and Vimegar
        let NERDTreeHijackNetrw = 0
        " Set NERDTree base folder to current file folder
        map <leader>r :NERDTreeFind<cr>


    " === Greplace ===
    
        " We want to use Ag for the search 
        set grepprg=ag

        let g:grep_cmd_opts = '--line-numbers --noheading'

    " === Emmet === 

        let g:user_emmet_leader_key='<D-§>'

    " === Vim Surround ===

        nmap <Leader>c :CtrlPBufTag<cr>

    " === vim-airline ===

        let g:airline_powerline_fonts = 1
        set laststatus=2
        " let g:airline#extensions#tabline#left_sep = ' '
        " let g:airline#extensions#tabline#left_alt_sep = '|'

    " === Syntastic ===
    
        set statusline+=%#warningmsg#
        set statusline+=%{SyntasticStatuslineFlag()}
        set statusline+=%*

        let g:syntastic_always_populate_loc_list = 1
        let g:syntastic_auto_loc_list = 1
        let g:syntastic_check_on_open = 1
        let g:syntastic_mode_map = { "mode": "passive" }
        let g:syntastic_check_on_wq = 0

        nmap <Leader>sc :SyntasticCheck<cr>
        nmap <Leader>sr :SyntasticReset<cr>

    " === Stupid Easy-Motion ===
    
        " change the default EasyMotion shading to something more readable with Solarized
        hi link EasyMotionTarget Search
        hi link EasyMotionTarget2First Search
        hi link EasyMotionTarget2Second Search
        hi link EasyMotionShade Comment
        
    " === YouCompleteMe ===

        let g:ycm_autoclose_preview_window_after_completion = 1

    " === IndentLine ===

        let g:indentLine_color_gui = '#A4E57E'
        let g:indentLine_char = '┆'
        

" === Auto-Commands ===

    "Automatically source the Vimrc file on save.
    augroup autosourcing
       autocmd!
       autocmd BufWritePost .vimrc source % 
    augroup END

    "" Configure Vim so that it sets the working directory to current file's
    "" directory
    autocmd BufEnter * silent! lcd %:p:h
    :au FocusLost * :set number|set nornu 
    :au FocusGained * :set number|set rnu
    autocmd InsertEnter * :set number
    autocmd InsertLeave * :set relativenumber


" === Scripts ===



" === Notes and Tips ===
" - <C-^>
" - <C-]>				-> Using ctags go to method definition
" - 'zz'				-> Instantly center the line where the cursor is located
" - :copen				-> Open a Quickfix List
" - :GSearch			-> make a global search
" - :GReplace			-> After you changed something using GSearch, GReplace apply the changes
" - :set line 			-> Show all whitespaces
" - :set line! (noline) -> Hide all whitespaces
" - /%s/foo/bar/g       -> Find each occurence of 'foo' (in all lines), and replace it with 'bar'
" - :new | :enew | :vnew | :tabnew -> new empty split | open new empty in this window | new empty vertical split | new empty tab 
" - :on | :only         -> Close all the splits except the one I'm in
