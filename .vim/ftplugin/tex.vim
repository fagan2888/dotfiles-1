nmap <silent><buffer><leader>r :!xelatex % <cr>
nmap <silent><buffer><leader>rr :!xelatex % <cr>
nmap <silent><buffer><leader>rb :!xelatex % && bibtex %< && xelatex % && xelatex % <cr>
nmap <silent><buffer><leader>v :!xdg-open %<.pdf <cr>
set nosi
