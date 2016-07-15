filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " Plugin handler 
Plugin 'tpope/vim-vinegar' " Folder/files navigation 
Plugin 'ctrlpvim/ctrlp.vim' " CtrlP Sublime-like functionality 
Plugin 'tpope/vim-surround' " Change Surrounds of word 
Plugin 'scrooloose/nerdcommenter' " Snippet for comment creations 
"Plugin 'jiangmiao/auto-pairs' " Auto-pairing bracket  
Plugin 'terryma/vim-multiple-cursors' " True Sublime text multi cursor
Plugin 'bling/vim-airline' " Airline status line
Plugin 'vim-airline/vim-airline-themes' " Airline themes
Plugin 'Valloric/YouCompleteMe' " Autocompletion
Plugin 'scrooloose/syntastic' " Syntax checker
Plugin 'ervandew/supertab'    " Tab autocompletion
Plugin 'joequery/Stupid-EasyMotion' " Stupid easy motion
Plugin 'edsono/vim-matchit' " Enhanced matching % for if/else and HTML
Plugin 'wikitopian/hardmode'
Plugin 'Yggdroot/indentLine' " Insert a vertical line to show indentation
Plugin 'scrooloose/nerdtree' " Treeview 
Plugin 'posva/vim-vue' " Vue files syntax highlighting
Plugin 'mattn/emmet-vim' " Emmet 
Plugin 'lfv89/vim-interestingwords' " highlight interesting words

" === UNUSED ===

"Plugin 'jdkanani/vim-material-theme' " material colorscheme
"Plugin 'rking/ag.vim' " Search 
"Plugin 'skwp/greplace.vim' " Search and replace 
"Plugin 'MarcWeber/vim-addon-mw-utils' " Necessary for vim-snipmate
"Plugin 'tomtom/tlib_vim' " Necessary for vim-snipmate
"Plugin 'garbas/vim-snipmate' " Create snippets easly 
"Plugin 'godlygeek/tabular'    " Necessary for vim-markdown
"Plugin 'heavenshell/vim-jsdoc'
"Plugin 'MattesGroeger/vim-bookmarks' " Vim bookmarks


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


