" Vim syntax file

" =============================================================================

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match  paraxiplogStatement	"^.*$" contains=paraxiplogTimestamp,paraxiplogThread,paraxiplogMinorLevel,paraxiplogMajorLevel,paraxiplogLogger,paraxiplogCallID,paraxiplogDialogicChannel
syn match  paraxiplogTimestamp	"^....-..-..\s..:..:..:..." contained
syn match  paraxiplogThread	"\s\[\d\+\]\s" contained
syn match paraxiplogLogger	"-\sparaxip[^:]\+" contained
syn keyword paraxiplogMinorLevel	INFO DEBUG TRACE contained
syn keyword paraxiplogMajorLevel	FATAL ERROR WARN contained

syn match paraxiplogCallID	"call-id=[[:digit:]-]\+" contained
syn match paraxiplogDialogicChannel "dtiB\d\+T\d\+" contained


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_paraxiplog_syntax_inits")
  if version < 508
    let did_paraxiplog_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  " color scheme is from C language
	HiLink paraxiplogTimestamp	        Special
	HiLink paraxiplogThread	                Comment 
	HiLink paraxiplogMinorLevel	        Identifier 
	HiLink paraxiplogMajorLevel	        Error 
	HiLink paraxiplogLogger	                String
	HiLink paraxiplogCallID	                Macro
	HiLink paraxiplogDialogicChannel        Type

  delcommand HiLink
endif

let b:current_syntax = "paraxiplog"

" Set the file to read-only
set ro

" vim:ts=8
