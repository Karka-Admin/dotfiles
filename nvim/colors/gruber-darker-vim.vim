hi clear
if exists("syntax_on")
    syntax reset
endif

set background=dark

" Extra Syntax Grouping
syn match    cCustomParen    "?=(" contains=cParen,cCppParen
syn match    cCustomFunc     "\w\+\s*(\@=" contains=cCustomParen
syn match    cCustomScope    "::"
syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope
syn match cCustomClassName "\(^class\s\)\@<=\w\+"

hi def link cCustomFunc Function
hi def link cCustomClass Function
hi def link cCustomClassName Type

" General gui
hi Normal       guibg=#181818 guifg=#e4e4ef gui=none
hi Menu         guibg=#ff0000 gui=none
hi EndOfBuffer  guibg=#181818 guifg=#181818 gui=none
hi Tooltip      guibg=#ff0000
hi lineNr       guifg=#453d41
hi StatusLine   guibg=#e4e4ef guifg=#453d41

" Popup menu
hi Pmenu        guibg=#181818 guifg=#e4e4ef
hi PmenuSel     guibg=#453d41 guifg=#e4e4ef
hi PmenuSbar    guibg=#181818 guifg=#e4e4ef
hi PmenuThumb   guibg=#181818 guifg=#e4e4ef

" Syntax
hi Comment      guifg=#cc8c3c gui=none

hi Constant     guifg=#e4e4ef gui=none
hi String       guifg=#73c936 gui=none
hi Character    guifg=#73c936 gui=none
hi Number       guifg=#e4e4ef gui=none
hi Boolean      guifg=#e4e4ef gui=none
hi Float        guifg=#e4e4ef gui=none

hi Identifier   guifg=#96a6c8
hi Function     guifg=#96a6c8 gui=none
hi javaScriptIdentifier guifg=#ffdd33 gui=none

hi Statement    guifg=#ffdd33 gui=bold

hi PreProc      guifg=#95a99f gui=none
hi Include      guifg=#95a99f gui=none
hi Define       guifg=#95a99f gui=none
hi Macro        guifg=#95a99f gui=none
hi PreCondit    guifg=#95a99f gui=none

hi Type         guifg=#95a99f gui=none
hi StorageClass guifg=#ffdd33 gui=bold
hi Structure    guifg=#ffdd33 gui=bold
hi Typedef      guifg=#ffdd33 gui=bold
hi cppType      guifg=#ffdd33 gui=bold

hi Special      guifg=#73c936 gui=none

hi Todo         guibg=none  guifg=#cc8c3c gui=none
