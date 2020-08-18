if !exists('g:ale_fixers')
  let g:ale_fixers = []
endif

if !exists('g:ale_fixers.python')
  let g:ale_fixers.python = []
endif

if executable('black')
  let g:ale_fixers.python += ['black']
endif

if executable('autopep8')
  let g:ale_fixers.python += ['autopep8']
endif
