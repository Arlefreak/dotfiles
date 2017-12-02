" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker:

" Notes {
    " Personal vimrc of Mario Carballo Zama
    " [afk] https://ellugar.co
    " This should handle all different platforms
" }

" Identify platform {
    silent function! OSX()
        return has('macunix')
    endfunction
    silent function! LINUX()
        return has('unix') && !has('macunix') && !has('win32unix')
    endfunction
    silent function! WINDOWS()
        return  (has('win32') || has('win64'))
    endfunction
" }

" Basics {
    if !WINDOWS()
        set shell=/bin/sh
    endif
" }

" Windows Compatible {
    " On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
    " across (heterogeneous) systems easier.
    if WINDOWS()
        set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
    endif
" }

" Arrow Key Fix {
    if &term[:4] ==? 'xterm' || &term[:5] ==? 'screen' || &term[:3] ==? 'rxvt'
        inoremap <silent> <C-[>OC <RIGHT>
    endif
" }
