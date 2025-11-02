set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent
setlocal colorcolumn=80
autocmd BufNewFile,BufRead *.py set keywordprg=pydoc3.11
setlocal path=.,**
setlocal wildignore=*/__pycache__/*,*.pyc
setlocal include=^\\s*\\(from\\\|import\\)\\s*\\zs\\(\\S\\+\\s\\{-}\\)*\\ze\\($\\\|\ as\\)
setlocal define=^\\s*\\\\(def\\\|class\\)\\>
setlocal includeexpr=PyInclude(v:fname)


function! PyInclude(fname)
    let parts = split(a:fname, 'import ')
    let l = parts[0]
    if len(parts) > 1
        let r = parts[1]
        let joined = join([l, r], '.')
        let fp = substitute(joined, '\.', '/', 'g') . '.py'
        let found = glob(fp, 1)
        if len(found)
            return found
        endif
    endif
    return substitute(l, '\.', '/', 'g') . '.py'
endfunction
setlocal includeexpr=PyInclude(v:fname)
setlocal define=^\\s*\\<\\(def\\\|class\\)\\>
setlocal keywordprg=:!python3\ -m\ pydoc

