"======================================================================
"
" config.vim - 
"
" Created by liubang on 2018/11/20
" Last Modified: 2018/11/20 10:36:56
"
"======================================================================

"----------------------------------------------------------------------
" init
"----------------------------------------------------------------------
function! s:init()
  set conceallevel=1
  let g:tex_stylish = 1
  let g:tex_conceal = 'abdmg'
  let g:tex_flavor = "tex"
  let g:tex_isk='48-57,a-z,A-Z,192-255,:'

  let g:vimtex_quickfix_open_on_warning = 0
  let g:vimtex_index_split_pos = 'full'
  let g:vimtex_index_mode = 2
  let g:vimtex_fold_enabled = 0
  let g:vimtex_toc_fold = 1
  let g:vimtex_toc_hotkeys = {'enabled' : 1}
  let g:vimtex_format_enabled = 1
  let g:vimtex_quickfix_mode=0
  let g:vimtex_imaps_leader = '\|'
  let g:vimtex_complete_img_use_tail = 1
  let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
  let g:vimtex_view_general_options = '-r @line @pdf @tex'
  let g:vimtex_view_general_options_latexmk = '-r'
  let g:vimtex_view_automatic = 1
  " let g:vimtex_view_forward_search_on_start = 0
  if g:lbvim.nvim
    let g:vimtex_compiler_progname = 'nvr'
  endif
endfun

"----------------------------------------------------------------------
" events
"----------------------------------------------------------------------
augroup LatexGroup
  autocmd!
  autocmd FileType plaintex,latex set filetype=tex
  autocmd FileType plaintex,latex,tex call s:init()
augroup END
