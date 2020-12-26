" Lf_hl_popup_inputText is the wincolor of input window
highlight def Lf_hl_popup_inputText guifg=#FFFFFF guibg=#3C3C3C gui=NONE ctermfg=15 ctermbg=237 cterm=NONE

" Lf_hl_popup_window is the wincolor of content window
highlight def Lf_hl_popup_window       guifg=#D4D4D4 guibg=#181818 gui=NONE ctermfg=188 ctermbg=233 cterm=NONE

" Lf_hl_popup_blank is the wincolor of statusline window
highlight def Lf_hl_popup_blank        guifg=#FFFFFF guibg=#262626 gui=NONE ctermfg=15  ctermbg=235 cterm=NONE

highlight def link Lf_hl_popup_cursor Cursor
highlight def Lf_hl_popup_prompt       guifg=#FFFFFF guibg=NONE    gui=NONE ctermfg=15  ctermbg=NONE cterm=NONE
highlight def Lf_hl_popup_spin         guifg=#FFFFFF guibg=#303030 gui=BOLD ctermfg=15  ctermbg=236  cterm=BOLD
highlight def Lf_hl_popup_normalMode   guifg=#D4D4D4 guibg=#303030 gui=bold ctermfg=188 ctermbg=236  cterm=bold
highlight def Lf_hl_popup_inputMode    guifg=#FFFFFF guibg=#0A7ACA gui=bold ctermfg=15  ctermbg=32   cterm=bold
highlight def Lf_hl_popup_category     guifg=#FFFFFF guibg=#5CB6F8 gui=BOLD ctermfg=15  ctermbg=75   cterm=BOLD
highlight def Lf_hl_popup_nameOnlyMode guifg=#FFFFFF guibg=#F44747 gui=BOLD ctermfg=15  ctermbg=203  cterm=BOLD
highlight def Lf_hl_popup_fullPathMode guifg=#FFFFFF guibg=#FFAF00 gui=BOLD ctermfg=15  ctermbg=214  cterm=BOLD
highlight def Lf_hl_popup_fuzzyMode    guifg=#FFFFFF guibg=#FFAF00 gui=BOLD ctermfg=15  ctermbg=214  cterm=BOLD
highlight def Lf_hl_popup_regexMode    guifg=#FFFFFF guibg=#4EC9B0 gui=BOLD ctermfg=15  ctermbg=43   cterm=BOLD
highlight def Lf_hl_popup_cwd          guifg=#FFFFFF guibg=#303030 gui=BOLD ctermfg=15  ctermbg=236  cterm=BOLD
highlight def Lf_hl_popup_lineInfo     guifg=#FFFFFF guibg=#5CB6F8 gui=BOLD ctermfg=15  ctermbg=75   cterm=BOLD
highlight def Lf_hl_popup_total        guifg=#FFFFFF guibg=#0A7ACA gui=BOLD ctermfg=15  ctermbg=32   cterm=BOLD

" the color of the cursorline
highlight def Lf_hl_cursorline guifg=#AEAFAD guibg=#222222 gui=NONE ctermfg=187 ctermbg=240 cterm=NONE

" the color of matching character
highlight def Lf_hl_match  guifg=#D16969 guibg=NONE gui=bold ctermfg=167 ctermbg=NONE cterm=bold

" the color of matching character in `And mode`
highlight def Lf_hl_match0 guifg=#D16969 guibg=NONE gui=bold ctermfg=167 ctermbg=NONE cterm=bold
highlight def Lf_hl_match1 guifg=#fe8019 guibg=NONE gui=bold ctermfg=208 ctermbg=NONE cterm=bold
highlight def Lf_hl_match2 guifg=#3ff5d1 guibg=NONE gui=bold ctermfg=50 ctermbg=NONE cterm=bold
highlight def Lf_hl_match3 guifg=#ff7272 guibg=NONE gui=bold ctermfg=203 ctermbg=NONE cterm=bold
highlight def Lf_hl_match4 guifg=#43b9f0 guibg=NONE gui=bold ctermfg=74 ctermbg=NONE cterm=bold

" the color of matching character in nameOnly mode when ';' is typed
highlight def Lf_hl_matchRefine gui=bold guifg=Magenta cterm=bold ctermfg=201

" the color of help in normal mode when <F1> is pressed
highlight def link Lf_hl_help               Comment
highlight def link Lf_hl_helpCmd            Identifier

" the color when select multiple lines
highlight def Lf_hl_selection guifg=#FFFFFF guibg=#264F78 gui=bold ctermfg=15 ctermbg=24 cterm=NONE

" the color of `Leaderf buffer`
highlight def link Lf_hl_bufNumber          Constant
highlight def link Lf_hl_bufIndicators      Statement
highlight def link Lf_hl_bufModified        String
highlight def link Lf_hl_bufNomodifiable    Comment
highlight def link Lf_hl_bufDirname         Directory

" the color of `Leaderf tag`
highlight def link Lf_hl_tagFile            Directory
highlight def link Lf_hl_tagType            Type
highlight def link Lf_hl_tagKeyword         Keyword

" the color of `Leaderf bufTag`
highlight def link Lf_hl_buftagKind         Title
highlight def link Lf_hl_buftagScopeType    Keyword
highlight def link Lf_hl_buftagScope        Type
highlight def link Lf_hl_buftagDirname      Directory
highlight def link Lf_hl_buftagLineNum      Constant
highlight def link Lf_hl_buftagCode         Comment

" the color of `Leaderf function`
highlight def link Lf_hl_funcKind           Title
highlight def link Lf_hl_funcReturnType     Type
highlight def link Lf_hl_funcScope          Keyword
highlight def link Lf_hl_funcName           Function
highlight def link Lf_hl_funcDirname        Directory
highlight def link Lf_hl_funcLineNum        Constant

" the color of `Leaderf line`
highlight def link Lf_hl_lineLocation       Comment

" the color of `Leaderf self`
highlight def link Lf_hl_selfIndex          Constant
highlight def link Lf_hl_selfDescription    Comment

" the color of `Leaderf help`
highlight def link Lf_hl_helpTagfile        Comment

" the color of `Leaderf rg`
highlight def link Lf_hl_rgFileName         Directory
highlight def link Lf_hl_rgLineNumber       LineNr
" the color of line number if '-A' or '-B' or '-C' is in the options list
" of `Leaderf rg`
highlight def link Lf_hl_rgLineNumber2      Folded
" the color of column number if '--column' in g:Lf_RgConfig
highlight def link Lf_hl_rgColumnNumber     Constant
highlight def Lf_hl_rgHighlight guifg=#000000 guibg=#cccc66 gui=NONE ctermfg=16 ctermbg=185 cterm=NONE

" the color of `Leaderf gtags`
highlight def link Lf_hl_gtagsFileName      Directory
highlight def link Lf_hl_gtagsLineNumber    Constant
highlight def Lf_hl_gtagsHighlight guifg=#000000 guibg=#cccc66 gui=NONE ctermfg=16 ctermbg=185 cterm=NONE

highlight def link Lf_hl_previewTitle       Statusline

highlight def link Lf_hl_winNumber          Constant
highlight def link Lf_hl_winIndicators      Statement
highlight def link Lf_hl_winModified        String
highlight def link Lf_hl_winNomodifiable    Comment
highlight def link Lf_hl_winDirname         Directory
highlight def link Lf_hl_quickfixFileName   Directory
highlight def link Lf_hl_quickfixLineNumber Constant
highlight def link Lf_hl_quickfixColumnNumber Constant
highlight def link Lf_hl_loclistFileName    Directory
highlight def link Lf_hl_loclistLineNumber  Constant
highlight def link Lf_hl_loclistColumnNumber Constant
