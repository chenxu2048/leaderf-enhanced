function leaderf#extensions#register#register(args) abort
    redir => l:registers
    silent register
    redir END
    return l:registers->split('\n')
endfunction

function leaderf#extensions#register#accept(line, args) abort
endfunction

function leaderf#extensions#register#load() abort
    let l:reg_ext = {
        \ 'source': 'leaderf#extensions#register#register',
        \ 'accept': 'leaderf#extensions#register#accept',
    \ }
    call leaderf#enhanced#register('register', reg_ext)
endfunction

