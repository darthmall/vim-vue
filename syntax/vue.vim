" Vim syntax file
" Language:	Vue.js
" Maintainer:	W. Evan Sheehan

if exists("b:current_syntax")
  finish
endif

syntax include @HTML syntax/html.vim
unlet b:current_syntax
syntax region template keepend start=/<template\( lang="[a-zA-Z]\+"\)\?>/ end="/\s*([^<]?)\s*?\/template([>$]?)\s*/ism" contains=@HTML fold

syntax include @JS syntax/javascript.vim
unlet b:current_syntax
syntax region script keepend start=/<script\( lang="[a-zA-Z]\+"\)\?>/ end="/\s*([^<]?)\s*?\/script([>$]?)\s*/ism" contains=@JS fold

syntax include @CSS syntax/css.vim
unlet b:current_syntax
syntax region style keepend start=/<style\( lang="[a-zA-Z]\+"\)\?>/ end="/\s*([^<]?)\s*?\/style([>$]?)\s*/ism" contains=@CSS fold

let b:current_syntax = "vue"
