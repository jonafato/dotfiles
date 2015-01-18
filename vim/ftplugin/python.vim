setlocal omnifunc=jedi#completions
setlocal textwidth=80
setlocal colorcolumn=80  " A good rule of thumb for code width

let g:jedi#popup_on_dot = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#usages_command = "<Leader>u" " I use <Leader>n for NerdTreeToggle
setlocal bs=2 " make backspace behave like normal again

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args='--ignore=E501,E711,E712'
