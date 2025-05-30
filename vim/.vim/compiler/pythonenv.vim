" ~/.vim/compiler/pythonenv.vim
" Smart Python environment-aware compiler for Vim
if exists("current_compiler")
  finish
endif
let current_compiler = "pythonenv"

" Detect the correct Python runner
if filereadable("pyproject.toml") && executable("poetry")
  let &makeprg = "poetry run python3 %"
elseif filereadable("Pipfile") && executable("pipenv")
  let &makeprg = "pipenv run python3 %"
else
  let &makeprg = "python3 %"
endif

" Error format that supports traceback navigation
" This handles Python tracebacks so :cn works
let &errorformat =
      \ '%E  File "%f"\, line %l\,%.%#,' .
      \ '%Z%[%^\ ]%#%m'

" Optional: open the quickfix window automatically after :make
autocmd QuickFixCmdPost make cwindow
