function leaderf#extensions#map#map(args) abort
    let l:mode = ''
    if a:args->has_key('--mode') && a:args['--mode']->len() != 0
        let l:mode = a:args['--mode'][0]
    endif

    " save env
    let l:map_gv  = l:mode == 'x' ? 'gv' : ''
    let l:map_cnt = v:count == 0 ? '' : v:count
    let l:map_reg = empty(v:register) ? '' : ('"'.v:register)

    let s:map_prefix = l:map_gv . l:map_cnt . l:map_reg
    let s:map_op  = l:mode == 'o' ? v:operator : ''
    redir => l:maps
    silent map
    redir END
    return split(l:maps, '\n')
endfunction

function leaderf#extensions#map#accept(line, args) abort
    let l:key = matchstr(a:line, '^\S*')
    redraw
    call feedkeys(s:map_prefix, 'n')
    call feedkeys(s:map_op. substitute(l:key, '<[^ >]\+>', '\=eval("\"\\".submatch(0)."\"")', 'g'))
endfunction

function leaderf#extensions#map#format(lines, args) abort
    let l:mappings = []
    let l:max_lhs = 0
    let l:total_lhs = 0
    for l:line in a:lines
        let l:matched = l:line->matchlist('^\(..\) \(\S\+\)\s*\([*&@]*\)\s*\(.*\)$')
        if len(l:matched) != 0
            let l:mapping = {
                \ 'mode': l:matched[1]->substitute(' ', '', 'g')->split('\zs'),
                \ 'lhs': l:matched[2],
                \ 'special': l:matched[3]->substitute(' ', '', 'g')->split('\zs'),
                \ 'rhs': l:matched[4],
            \ }
            let l:mappings += [ l:mapping ]
            let l:lhs_len = l:mapping['lhs']->strlen()
            if l:lhs_len > l:max_lhs
                let l:max_lhs = l:lhs_len
            endif
            let l:total_lhs += l:lhs_len
        endif
    endfor

    let l:avg_lhs = l:total_lhs / l:mappings->len()
    if l:avg_lhs * 3 / 2 < l:max_lhs
        let l:max_lhs = l:avg_lhs * 3 / 2
    endif

    let l:align_text = repeat(' ', l:max_lhs)
    let l:formatted = []
    for l:mapping in l:mappings
        let l:lhs = l:mapping['lhs'] . l:align_text
        let l:lhs = l:lhs[0: l:max_lhs]
        let l:rhs = l:mapping['rhs']
        let l:formatted += [ l:lhs . ' ' . l:rhs ]
    endfor
    return l:formatted
endfunction

function leaderf#extensions#map#load()
    let l:map_ext = {
        \ 'source': 'leaderf#extensions#map#map',
        \ 'arguments': [
            \ {
                \ 'name': [
                    \ '--mode',
                    \ '-m',
                \ ],
                \ 'nargs': '?', 
                \ 'help': 'map listing mode',
            \ },
        \ ],
        \ 'accept': 'leaderf#extensions#map#accept',
        \ 'format_list': 'leaderf#extensions#map#format',
        \ 'highlights_def': {
            \ 'Lf_hl_map_special': '<\(Plug\)\@!.\{-}>',
            \ 'Lf_hl_map_plug': '<Plug>',
            \ 'Lf_hl_map_sstring': "'[^']*'",
            \ 'Lf_hl_map_dstring': '".\{-}[^\\]"',
        \ },
        \ 'highlights_cmd': [
            \ 'highlight default link Lf_hl_map_plug Constant',
            \ 'highlight default link Lf_hl_map_special Special',
            \ 'highlight default link Lf_hl_map_sstring String',
            \ 'highlight default link Lf_hl_map_dstring String',
        \ ],
    \ }

    call leaderf#enhanced#register('map', map_ext)

    noremap <Plug>(leaderf-map-n) :<C-U>Leaderf map --mode n<CR>
    noremap <Plug>(leaderf-map-x) :<C-U>Leaderf map --mode x<CR>
    noremap <Plug>(leaderf-map-o) :<C-U>Leaderf map --mode o<CR>
    noremap <Plug>(leaderf-map-i) :<C-U>Leaderf map --mode i<CR>
endfunction

