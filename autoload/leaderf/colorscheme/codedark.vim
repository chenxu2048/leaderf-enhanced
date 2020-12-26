let s:fg = { 'gui': '#FFFFFF', 'cterm': '15' }
let s:blue = { 'gui': '#0A7ACA', 'cterm': '32' }
let s:lightBlue = { 'gui': '#5CB6F8', 'cterm': '75' }
let s:yellow = { 'gui': '#FFAF00', 'cterm': '214' }
let s:red = { 'gui': '#F44747', 'cterm': '203' }
let s:dark = { 'gui': '#262626', 'cterm': '235' }
let s:gray = { 'gui': '#303030', 'cterm': '236' }
let s:green = { 'gui': '#4EC9B0', 'cterm': '43' }

let s:name = {
    \    'gui': 'bold',
    \    'font': 'NONE',
    \    'guifg': s:fg.gui,
    \    'guibg': s:blue.gui,
    \    'cterm': 'bold',
    \    'ctermfg': s:fg.cterm,
    \    'ctermbg': s:blue.cterm
    \ }

let s:catagory = {
    \    'gui': 'bold',
    \    'font': 'NONE',
    \    'guifg': s:fg.gui,
    \    'guibg': s:lightBlue.gui,
    \    'cterm': 'bold',
    \    'ctermfg': s:fg.cterm,
    \    'ctermbg': s:lightBlue.cterm
    \ }

let s:nameOnlyMode = {
    \    'gui': 'bold',
    \    'font': 'NONE',
    \    'guifg': s:fg.gui,
    \    'guibg': s:red.gui,
    \    'cterm': 'bold',
    \    'ctermfg': s:fg.cterm,
    \    'ctermbg': s:red.cterm
    \ }

let s:fullPathMode = {
    \    'gui': 'bold',
    \    'font': 'NONE',
    \    'guifg': s:fg.gui,
    \    'guibg': s:yellow.gui,
    \    'cterm': 'bold',
    \    'ctermfg': s:fg.cterm,
    \    'ctermbg': s:yellow.cterm
    \ }

let s:fuzzyMode = {
    \    'gui': 'bold',
    \    'font': 'NONE',
    \    'guifg': s:fg.gui,
    \    'guibg': s:yellow.gui,
    \    'cterm': 'bold',
    \    'ctermfg': s:fg.cterm,
    \    'ctermbg': s:yellow.cterm
    \ }

let s:regexMode = {
    \    'gui': 'bold',
    \    'font': 'NONE',
    \    'guifg': s:fg.gui,
    \    'guibg': s:green.gui,
    \    'cterm': 'bold',
    \    'ctermfg': s:fg.cterm,
    \    'ctermbg': s:green.cterm
    \ }

let s:cwd = {
    \    'gui': 'bold',
    \    'font': 'NONE',
    \    'guifg': s:fg.gui,
    \    'guibg': s:gray.gui,
    \    'cterm': 'bold',
    \    'ctermfg': s:fg.cterm,
    \    'ctermbg': '236'
    \ }

let s:blank = {
    \    'gui': 'NONE',
    \    'font': 'NONE',
    \    'guifg': s:fg.gui,
    \    'guibg': s:dark.gui,
    \    'cterm': 'NONE',
    \    'ctermfg': s:fg.cterm,
    \    'ctermbg': s:dark.cterm
    \ }

let s:spin = {
    \    'gui': 'bold',
    \    'font': 'NONE',
    \    'guifg': s:fg.gui,
    \    'guibg': s:gray.gui,
    \    'cterm': 'bold',
    \    'ctermfg': s:fg.cterm,
    \    'ctermbg': s:gray.cterm
    \ }

let s:lineInfo = {
    \    'gui': 'bold',
    \    'font': 'NONE',
    \    'guifg': s:fg.gui,
    \    'guibg': s:lightBlue.gui,
    \    'cterm': 'bold',
    \    'ctermfg': s:fg.cterm,
    \    'ctermbg': s:lightBlue.cterm
    \ }

let s:total = {
    \    'gui': 'bold',
    \    'font': 'NONE',
    \    'guifg': s:fg.gui,
    \    'guibg': s:blue.gui,
    \    'cterm': 'bold',
    \    'ctermfg': s:fg.cterm,
    \    'ctermbg': s:blue.cterm
    \ }

let s:palette = {
            \   'stlName': s:name,
            \   'stlCategory': s:catagory,
            \   'stlNameOnlyMode': s:nameOnlyMode,
            \   'stlFullPathMode': s:fullPathMode,
            \   'stlFuzzyMode': s:fuzzyMode,
            \   'stlRegexMode': s:regexMode,
            \   'stlCwd': s:cwd,
            \   'stlBlank': s:blank,
            \   'stlSpin': s:spin,
            \   'stlLineInfo': s:lineInfo,
            \   'stlTotal': s:total,
            \ }

let g:leaderf#colorscheme#codedark#palette = leaderf#colorscheme#mergePalette(s:palette)
