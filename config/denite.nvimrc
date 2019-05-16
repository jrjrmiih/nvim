" Configure grep, use rg command
call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--no-heading'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Ignore pattern for matcher.
call denite#custom#var('file_rec', 'command', ['rg', '--files', '--glob', '!.git', ''])

" Match substring search in file_rec list.
call denite#custom#source('file_rec', 'matchers', ['matcher_substring'])
