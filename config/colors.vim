set background=dark

syntax on

try
  colorscheme hybrid
catch
endtry

if has('termguicolors')
  set t_ut=
  set termguicolors
endif
