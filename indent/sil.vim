if exists("b:did_indent")
  finish
endif

let b:did_indent=1

setlocal indentexpr=SilIndent()
setlocal indentkeys+=0=\|>

if exists("*SilIndent")
  finish
endif

function! SilIndent()
  let lnum = prevnonblank(v:lnum - 1)
  if lnum == 0
    return 0
  endif

  let thisline = getline(v:lnum)
  let prevline = getline(lnum)
  let ind = indent(lnum)

  " Deal with { }.
  if prevline =~ '{[^}]*$'
    let ind = ind + shiftwidth()
  endif
  if thisline =~ '^\s*}'
    call cursor(v:lnum, 1)
    let matchlnum = searchpair('{', '', '}', 'Wbn')
    let ind = indent(matchlnum)
  endif

  " Deal with |> pipelines.
  if thisline =~ '^\s*|>' && prevline !~ '^\s*|>'
    let ind = ind + shiftwidth()
  endif

  return ind
endfunction
