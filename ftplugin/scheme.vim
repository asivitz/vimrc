if exists('loaded_schemefolding') || &cp
    finish
endif
let loaded_schemefolding=1

" ---------------------------------------------------------------------------
"  Automagic Scheme folding
"
function GetSchemeFold()
      if getline(v:lnum) =~ '^(define.*\s'
            return ">1"
      elseif getline(v:lnum) =~ '^(define-syntax.*\s'
            return ">1"
      elseif getline(v:lnum) =~ '^(c-define.*\s'
            return ">1"
      elseif getline(v:lnum) =~ '^(let.*\s'
            return ">1"
      elseif getline(v:lnum) =~ '^\s*$'
            return "<1"
      elseif getline(v:lnum) =~ '^;.*$'
            return "<1"
      else
            return "="
      endif
endfunction

function TurnOnSchemeFolding()
      setlocal foldexpr=GetSchemeFold()
      setlocal foldmethod=expr
endfunction
