function leaderf#extensions#register#register(args) abort
    redir => l:registers
    silent register
    redir END
    return split(l:registers, '\n')
endfunction

function leaderf#extensions#register#accept(line, args) abort
    let l:register = matchstr(a:line, '^".')
    redraw
    call feedkeys("\e" . l:register . 'p')
endfunction

function leaderf#extensions#register#format(lines, args) abort
    let l:mappings = []
    for l:line in a:lines
        let l:matched = matchlist(l:line, '^\(".\)   \(.*\)')
        if len(l:matched) != 0
            let l:mappings += [ l:matched[1] . ': ' . l:matched[2] ]
        endif
    endfor
    return l:mappings
endfunction

function leaderf#extensions#register#load() abort
    let l:reg_ext = {
        \ 'source': 'leaderf#extensions#register#register',
        \ 'accept': 'leaderf#extensions#register#accept',
        \ 'format_list': 'leaderf#extensions#register#format',
        \ 'highlights_def': {
            \ 'Lf_hl_reg_reg': '^"',
            \ 'Lf_hl_reg_name': '^"\zs.',
            \ 'Lf_hl_reg_value': '^\(".: \)\zs.*'
        \ },
        \ 'highlights_cmd': [
            \ 'highlight default link Lf_hl_reg_reg Constant',
            \ 'highlight default link Lf_hl_reg_name Special',
            \ 'highlight default link Lf_hl_reg_value Normal',
        \ ],
    \ }
    call leaderf#enhanced#register('register', reg_ext)
endfunction

