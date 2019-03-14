" Ale stuff
let g:ale_fixers = {
\ 'javascript': ['prettier', 'eslint'],
\ 'elixir':  ['mix_format']
\}

let g:ale_linters = {
\    'javascript': ['eslint'],
\    'javascript.jsx': ['eslint']
\}

let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 0
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_javascript_eslint_use_local_config = 1
let g:ale_sign_error = ''
let g:ale_sign_warning = ''

let g:signify_sign_add = '┃'
let g:signify_sign_change = '┃'
let g:signify_sign_delete = '◢'
let g:signify_sign_show_count = 0

let g:projectionist_heuristics = {
      \   'src/*': {
      \     '*.js': {
      \       'alternate': [
      \         '{dirname}/{basename}.test.js',
      \         '{dirname}/__tests__/{basename}.test.js',
      \       ],
      \       'type': 'source'
      \     },
      \     '*.test.js': {
      \       'alternate': [
      \         '{dirname}/{basename}.js',
      \         '{dirname}/../{basename}.js'
      \       ],
      \       'type': 'test',
      \     },
      \     '**/__tests__/*-mocha.js': {
      \       'alternate': '{dirname}/{basename}.js',
      \       'type': 'test'
      \     },
      \     '**/__tests__/*-test.js': {
      \       'alternate': '{dirname}/{basename}.js',
      \       'type': 'test'
      \     }
      \   }
      \ }

au FileType elixir let b:AutoPairs = AutoPairsDefine({'do': 'end//n'})

let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js,*.html.erb,*.md'

" JavaScript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_domhtmlcss = 1

" lang server
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <leader>lh <Plug>(coc-diagnostic-info)
nmap <leader>ld <Plug>(coc-definition)
nmap <leader>la <Plug>(coc-references)
nmap <leader>li <Plug>(coc-implementation)
nmap <leader>lr <Plug>(coc-rename)


command! -nargs=? Fold :call     CocAction('fold', <f-args>)

nnoremap <silent> <space>o  :<C-u>CocList outline<cr>

nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>

"Ctrl-P stuff
let g:ctrlp_match_window='bottom,order:ttb'
let g:ctrlp_user_command='ag %s -l --nocolor --ignore ".git/" --hidden -g ""'
let g:ctrlp_by_filename=1
let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
\ 'file': '\.so$\|\.dat$|\.DS_Store$'
\ }

let g:sneak#label = 1

" Theme stuff
let g:palenight_terminal_italics=1
let g:nord_underline = 1
let g:nord_italic_comments = 1
let g:nord_italic = 1
let g:nord_cursor_line_number_background = 1
let g:lightline = {
      \ 'colorscheme': 'palenight',
      \ 'active': {
      \   'left': [
      \     [ 'mode', 'paste' ],
      \     [ 'fugitive', 'filename' ]
      \   ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive',
      \   'readonly': 'LightlineReadonly',
      \   'modified': 'LightlineModified',
      \   'filename': 'LightlineFilename'
      \ },
      \ 'separator': {
      \   'left': '',
      \   'right': ''
      \ },
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
    \ }

function! LightlineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! LightlineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return ""
  else
    return ""
  endif
endfunction

function! LightlineFugitive()
  if exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
  return ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? WebDevIconsGetFileTypeSymbol() . ' ' . expand('%:t') : '[No Name]') .
       \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1 " enable folder glyph flag
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
