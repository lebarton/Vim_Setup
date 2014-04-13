

nmap	<F1>	:echo<CR>
nnoremap	<F1>	:tabprevious<CR>
nnoremap	<F2>	:tabnext<CR>
nnoremap	<F5>	:tabnew<CR>
nnoremap	<F6>	:tabclose<CR>

inoremap	<F5>	<ESC>:tabnew<CR>i
inoremap	<F6>	<ESC>:tabclose<CR>i


nnoremap	<F3>	:NERDTreeToggle<CR>
" Pathogen
execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on





