" Vim syntax file
" Language: quke

" Remove any old syntax stuff hanging around
syn clear

if !exists("main_syntax")
 let main_syntax = 'quke'
endif

" Read the k syntax to start with
source <sfile>:p:h/q.vim

" quke grammar
syn match qukeBlock "feature\($\|\s.*$\)"
syn match qukeBlock "skip\($\|\s.*$\)"
syn match qukeBlock "before\($\|\s.*$\)"
syn match qukeBlock "after\($\|\s.*$\)"
syn match qukeBlock "should\($\|\s.*$\)"
syn match qukeBlock "expect\($\|\s.*$\)"
syn match qukeBlock "property\($\|\s.*$\)"
syn match qukeBlock "bench\($\|\s.*$\)"
syn match qukeBlock "tolerance\($\|\s.*$\)"
syn match qukeBlock "setup\($\|\s.*$\)"
syn match qukeBlock "teardown\($\|\s.*$\)"
syn match qukeBlock "replicate\($\|\s.*$\)"
syn match qukeBlock "baseline\($\|\s.*$\)"
syn match qukeBlock "behaviour\($\|\s.*$\)"
syn match qukeBlock "behavior\($\|\s.*$\)"

" xblocks
syn match xqukeBlock "xfeature\($\|\s.*$\)"
syn match xqukeBlock "xskip\($\|\s.*$\)"
syn match xqukeBlock "xbefore\($\|\s.*$\)"
syn match xqukeBlock "xafter\($\|\s.*$\)"
syn match xqukeBlock "xshould\($\|\s.*$\)"
syn match xqukeBlock "xexpect\($\|\s.*$\)"
syn match xqukeBlock "xproperty\($\|\s.*$\)"
syn match xqukeBlock "xbench\($\|\s.*$\)"
syn match xqukeBlock "xtolerance\($\|\s.*$\)"
syn match xqukeBlock "xsetup\($\|\s.*$\)"
syn match xqukeBlock "xteardown\($\|\s.*$\)"
syn match xqukeBlock "xreplicate\($\|\s.*$\)"
syn match xqukeBlock "xbaseline\($\|\s.*$\)"
syn match xqukeBlock "xbehaviour\($\|\s.*$\)"
syn match xqukeBlock "xbehavior\($\|\s.*$\)"

" .qu functions
syn keyword qukeAPI .qu.stub.mock
syn keyword qukeAPI .qu.stub.single
syn keyword qukeAPI .qu.stub.restore
syn keyword qukeAPI .qu.stub.restoreAll
syn keyword qukeAPI .qu.compare

" .qch functions
syn keyword qchAPI .qch.check
syn keyword qchAPI .qch.forall
syn keyword qchAPI .qch.forall2
syn keyword qchAPI .qch.forall3
syn keyword qchAPI .qch.forall4
syn keyword qchAPI .qch.forall5
syn keyword qchAPI .qch.forall6
syn keyword qchAPI .qch.forall7
syn keyword qchAPI .qch.forall8
syn match qchAPI "\.qch\.g\.[^ []*"


if !exists("did_quke_syntax_inits")
 let did_quke_syntax_inits = 1
 hi link qukeBlock Statement
 hi link xqukeBlock Comment
 hi link qukeAPI Special
 hi link qchAPI Special
endif

let b:current_syntax = "quke"

if main_syntax == 'quke'
 unlet main_syntax
endif
