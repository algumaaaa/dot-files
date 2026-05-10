let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/Projects/Godot/taxista/src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +53 systems/SpecialMissions/EndDayMission.gd
badd +18 scenes/Main.gd
badd +0 systems/MissionManager.gd
badd +7 systems/Global.gd
badd +606 ~/.config/nvim/init.lua
argglobal
%argdel
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit systems/SpecialMissions/EndDayMission.gd
argglobal
setlocal foldmethod=expr
setlocal foldexpr=<SNR>31_GDScriptFoldLevel()
setlocal foldmarker={{{,}}}
setlocal foldignore=
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
17
sil! normal! zo
24
sil! normal! zo
36
sil! normal! zo
let s:l = 64 - ((13 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 64
normal! 050|
tabnext
edit scenes/Main.gd
argglobal
setlocal foldmethod=expr
setlocal foldexpr=<SNR>31_GDScriptFoldLevel()
setlocal foldmarker={{{,}}}
setlocal foldignore=
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
18
sil! normal! zo
19
sil! normal! zo
59
sil! normal! zo
60
sil! normal! zo
let s:l = 57 - ((13 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 57
normal! 0
tabnext
edit systems/Global.gd
argglobal
balt scenes/Main.gd
setlocal foldmethod=expr
setlocal foldexpr=<SNR>31_GDScriptFoldLevel()
setlocal foldmarker={{{,}}}
setlocal foldignore=
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
12
sil! normal! zo
14
sil! normal! zo
15
sil! normal! zo
18
sil! normal! zo
23
sil! normal! zo
let s:l = 8 - ((7 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
normal! 0
tabnext
edit systems/MissionManager.gd
argglobal
setlocal foldmethod=expr
setlocal foldexpr=<SNR>31_GDScriptFoldLevel()
setlocal foldmarker={{{,}}}
setlocal foldignore=
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 1 - ((0 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 07|
lcd ~/Documents/Projects/Godot/taxista/src
tabnext 1
set stal=1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
