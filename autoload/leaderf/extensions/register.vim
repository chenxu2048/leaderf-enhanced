function leaderf#extensions#register#register(args) abort
    redir => l:registers
    silent register
    redir END
    return split(l:registers, '\n')
endfunction

function leaderf#extensions#register#accept(line, args) abort
    let l:register = matchstr(a:line, '^.\ze:')
    let g:register = l:register
    let g:line = a:line
    redraw
    call feedkeys("\e\"" . l:register . 'p')
endfunction

if has('nvim')
    let s:register_pattern = '^"\(.\)   \(.*\)$'
else
    let s:register_pattern = '^  .  "\(.\)   \(.*\)$'
endif

function leaderf#extensions#register#format(lines, args) abort
    let l:mappings = []
    for l:line in a:lines
        let l:matched = matchlist(l:line, s:register_pattern)
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
            \ 'Lf_hl_reg_name': '^\zs.',
            \ 'Lf_hl_reg_value': '^\(.: \)\zs.*',
        \ },
        \ 'highlights_cmd': [
            \ 'highlight default link Lf_hl_reg_name Special',
            \ 'highlight default link Lf_hl_reg_value Normal',
        \ ],
    \ }
    call leaderf#enhanced#register('register', reg_ext)
endfunction

