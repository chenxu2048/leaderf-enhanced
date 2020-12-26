let s:lf_enhanced_recent_cache = '~/.vim/recent'
let s:lf_enhanced_recent_cache_size = 30

function leaderf#extensions#recent#recent(args) abort
    return []
endfunction

function leaderf#extensions#recent#accept(line, args) abort
endfunction

function leaderf#extensions#recent#load() abort
    let g:lf_enhanced_recent_cache = get(g:, 'lf_enhanced_recent_cache', s:lf_enhanced_recent_cache)
    let g:lf_enhanced_recent_cache_size = get(g:, 'lf_enhanced_recent_cache_size', s:lf_enhanced_recent_cache_size)
    let l:recent_ext = {
        \ 'source': 'leaderf#extensions#recent#recent',
        \ 'accept': 'leaderf#extensions#recent#accept',
    \ }
    call leaderf#enhanced#register('recent', recent_ext)
endfunction

