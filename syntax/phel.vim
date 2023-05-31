if exists("b:current_syntax")
	finish
endif
let b:current_syntax = "phel"

" Otherwise it will split compound primitives like str-contains? as multiple
set lisp
set iskeyword+=33,63

" List of functions: https://phel-lang.org/documentation/api
" TODO: Maybe split syn statements by chapter?
syn keyword phelSyntax ns def let defn true false if recur
syn keyword phelBuiltin %  *  **  +  -  ->  ->>  /  <  <=  <=>  =  >  >=  >=<  *build-mode*  *compile-mode*  *ns*  NAN  nan?  all? and  argv  as->  associative?  binding  bit-and  bit-clear  bit-flip  bit-not  bit-or  bit-set  bit-shift-left bit-shift-right  bit-test  bit-xor  boolean?  case  coerce-in  comment  comp  compare  compile complement  concat  cond  cons  contains-value?  contains?  count  dec  declare  deep-merge def-  definterface  defmacro  defmacro-  defn-  defstruct  deref  difference  difference-pair distinct  dofor  drop  drop-while  empty?  eval  even?  extreme  false?  ffirst  filter  find  find-index first  flatten  float?  for  format  frequencies  full-name  function?  gensym  get  get-in  group-by hash-map  hash-map?  html/doctype  html/escape-html  html/html  html/raw-string html/raw-string?  http/create-response-from-map  http/create-response-from-string http/emit-response  http/files-from-globals  http/headers-from-server  http/request http/request?  http/request-from-globals  http/request-from-globals-args http/request-from-map  http/response  http/response?  http/response-from-map http/response-from-string  http/uploaded-file  http/uploaded-file?  http/uri  http/uri? http/uri-from-globals  http/uri-from-string  id  identity  if-not  inc  indexed?  int?  interleave interpose  intersection  invert  json/decode  json/decode-value  json/encode  json/encode-value json/valid-key?  juxt  keep  keep-indexed  keys  keyword  keyword?  kvs  list  list?  map map-indexed  mapcat  max  mean  merge  merge-with  meta  min  name  namespace  neg?  next nfirst  nil?  nnext  not  not=  number?  odd?  one?  or  pairs  partial  partition  peek  persistent php-array-to-map  php-array?  php-associative-array  php-indexed-array  php-object? php-resource?  pop  pos?  print  print-str  printf  println  push  put  put-in  rand  rand-int  rand-nth range  re-seq  read-string  reduce  reduce2  remove  repeat  repl/build-facade  repl/compile-str repl/doc  repl/print-colorful  repl/println-colorful  repl/require  repl/resolve  repl/use  rest  reverse second  set  set!  set?  set-meta!  shuffle  slice  some?  sort  sort-by  split-at  split-with  str str-contains?  string?  struct?  sum  swap!  symbol?  symmetric-difference  take  take-last take-nth  take-while  test/deftest  test/is  test/print-summary  test/report  test/run-tests test/successful?  to-php-array  transient  tree-seq  true?  truthy?  type  union  unset  update update-in  values  var  var?  vector  vector?  when  when-not  with-output-buffer  zero?  zipcoll

syn region phelString start=/\%(\\\)\@<!"/ skip=/\\[\\"]/ end=/"/"

syn match phelKeyword ":\{1,2\}[^ \n\t\r(){}\[\],']\+"

" TODO: Replace with the regex list in phel-vs-code-extension
" https://github.com/phel-lang/phel-vs-code-extension/blob/master/syntaxes/phel.tmLanguage.json
" The current regex list is taken from other vim plugins found on GitHub
syn match phelNumber "\<\d\+\>"
syn match phelNumber "\<\d\+\.\d*\%([eE][-+]\=\d\+\)\=\>"
syn match phelNumber "\.\d\+\%([eE][-+]\=\d\+\)\=\>"
syn match phelNumber "\<\d\+[eE][-+]\=\d\+\>"

syn match phelComment /#.*$/

hi def link phelSyntax Statement
hi def link phelBuiltin Function
hi def link phelString String
hi def link phelComment Comment
hi def link phelNumber Number
hi def link phelKeyword Number
