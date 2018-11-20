"======================================================================
"
" init.vim - 
"
" Created by liubang on 2018/11/20
" Last Modified: 2018/11/20 13:01:42
"
"======================================================================

" Maintainer: liubang <https://github.com/iliubang>
" Version: 0.1
" vim: et ts=2 sts=2 sw=2

scriptencoding utf-8

" 防止重复加载
if get(s:, 'loaded', 0) != 0
	finish
else
	let s:loaded = 1
endif

if &compatible
 set nocompatible
endif

let g:lbvim_version = '0.7-dev'
let g:lbvim_isnvim = has('nvim')
let g:has_python = has('python')
let g:has_python3 = has('python3')
let g:MAC = has('macunix')
let g:LINUX = has('unix') && !has('macunix') && !has('win32unix')
let g:WINDOWS = has('win32') || has('win64') || has('win16') || has('win95')
let g:TMUX = !empty($TMUX)

let g:lbvim_home = g:lbvim_isnvim ? $HOME . '/.config/nvim' : $HOME . '/.vim'
let g:lbvim_plug_home = g:lbvim_home . '/plugged/'
let g:lbvim_plug_path = g:lbvim_home . '/core/autoload/plug.vim'
let g:components_dir = g:lbvim_home . '/units'

if g:WINDOWS
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

if g:lbvim_isnvim
  set runtimepath+=$HOME/.config/nvim/core
else
  set runtimepath+=$HOME/.vim/core
endif

call core#begin()
  CM 'better'
  CM 'theme'
  CM 'completor'
  CM 'editor'
  CM 'fzf'
  CM 'tags'
  CM 'docker'
call core#end()
