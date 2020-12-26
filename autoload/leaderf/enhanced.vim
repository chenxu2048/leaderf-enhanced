function! leaderf#enhanced#register(name, ext) abort
    let g:Lf_Extensions = get(g:, 'Lf_Extensions', {})
    let g:Lf_Extensions[a:name] = a:ext
endfunction

function! leaderf#enhanced#load() abort
    call leaderf#extensions#map#load()
    call leaderf#extensions#register#load()
    call leaderf#extensions#recent#load()
endfunction
