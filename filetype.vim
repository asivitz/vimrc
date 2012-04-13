if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
   au!
   au BufRead,BufNewFile *.mm     setfiletype objc
   au BufRead,BufNewFile *.fsh,*.vsh     setfiletype c
augroup END
