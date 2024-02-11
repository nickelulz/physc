let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <C-X>Þ <Nop>
inoremap <silent> <C-X> <Cmd>lua require("which-key").show("\24", {mode = "i", auto = true})
imap <silent> <Plug>(cmpu-jump-backwards) =UltiSnips#JumpBackwards()
imap <silent> <Plug>(cmpu-jump-forwards) =UltiSnips#JumpForwards()
imap <silent> <Plug>(cmpu-expand) =[UltiSnips#CursorMoved(), UltiSnips#ExpandSnippet()][1]
inoremap <silent> <expr> <Plug>delimitMateS-BS delimitMate#WithinEmptyPair() ? "\<Del>" : "\<S-BS>"
inoremap <silent> <Plug>delimitMateBS =delimitMate#BS()
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
inoremap <silent> <C-J> =UltiSnips#ExpandSnippetOrJump()
imap <C-G><C-F> <Plug>(UnicodeFuzzy)
imap <C-X><C-B> <Plug>(HTMLEntityComplete)
imap <C-X><C-Z> <Plug>(UnicodeComplete)
imap <C-X><C-G> <Plug>(DigraphComplete)
inoremap <silent> <C-R> <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
inoremap <silent> <C-G>Þ <Nop>
inoremap <silent> <C-G> <Cmd>lua require("which-key").show("\7", {mode = "i", auto = true})
cnoremap <silent> <C-R> <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
inoremap <Plug>(operator-sandwich-gv) gv
inoremap <Plug>(operator-sandwich-g@) g@
cnoremap <expr> <C-Y> wilder#can_accept_completion()  ?  wilder#accept_completion()  :  ''
cnoremap <expr> <C-E> wilder#can_reject_completion()  ?  wilder#reject_completion()  :  ''
cnoremap <expr> <S-Tab> wilder#in_context()  ?  wilder#previous()  :  '<S-Tab>'
imap <silent> <C-G>% <Plug>(matchup-c_g%)
inoremap <silent> <Plug>(matchup-c_g%) :call matchup#motion#insert_mode()
cnoremap <C-A> <Home>
inoremap <C-A> <Home>
inoremap <M-;> miA;`ii
inoremap <F11> <Cmd>set spell!
inoremap <C-T> b~lea
inoremap <C-W> u
inoremap <C-U> viwUea
snoremap <silent>  "_c
xnoremap <silent> <NL> :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> <NL> :call UltiSnips#ExpandSnippetOrJump()
nnoremap  <Cmd>nohlsearch|diffupdate|normal! 
snoremap  "_c
nnoremap <silent> Þ <Nop>
nnoremap <silent>  <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
tnoremap  
nnoremap <silent>  Þ <Nop>
nnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "n", auto = true})
nnoremap <silent>  u :MundoToggle
nnoremap <silent>  t :Vista!!
nnoremap <expr>  O printf('m`%sO``', v:count1)
nnoremap <expr>  o printf('m`%so``', v:count1)
nnoremap <silent> !aÞ <Nop>
nnoremap <silent> !iÞ <Nop>
nnoremap <silent> !Þ <Nop>
nnoremap <silent> ! <Cmd>lua require("which-key").show("!", {mode = "n", auto = true})
xnoremap <silent> " <Cmd>lua require("which-key").show("\"", {mode = "v", auto = true})
nnoremap <silent> " <Cmd>lua require("which-key").show("\"", {mode = "n", auto = true})
xnoremap # y?\V"
xnoremap $ g_
omap <silent> % <Ignore><Plug>(matchup-%)
xmap <silent> % <Plug>(matchup-%)
nmap <silent> % <Plug>(matchup-%)
nnoremap & :&&
nnoremap <silent> ' <Cmd>lua require("which-key").show("'", {mode = "n", auto = true})
xnoremap * y/\V"
nnoremap <silent> ,uÞ <Nop>
nmap ,un <Plug>(UnicodeSwapCompleteName)
xnoremap <silent> ,gÞ <Nop>
xnoremap <silent> ,Þ <Nop>
xnoremap <silent> , <Cmd>lua require("which-key").show(",", {mode = "v", auto = true})
nnoremap <silent> ,eÞ <Nop>
nnoremap <silent> ,cÞ <Nop>
nnoremap <silent> ,sÞ <Nop>
nnoremap <silent> ,dÞ <Nop>
nnoremap <silent> ,gpÞ <Nop>
nnoremap <silent> ,gÞ <Nop>
nnoremap <silent> ,fÞ <Nop>
nnoremap <silent> ,Þ <Nop>
nnoremap <silent> , <Cmd>lua require("which-key").show(",", {mode = "n", auto = true})
nnoremap ,gpu <Cmd>15 split|term git push
nnoremap ,gpl <Cmd>Git pull
nnoremap ,gd <Cmd>Gdiffsplit
nnoremap ,gc <Cmd>Git commit
nnoremap ,gw <Cmd>Gwrite
nnoremap ,gs <Cmd>Git
vnoremap ,gy <Cmd>lua require'gitlinker'.get_buf_range_url('v')
nnoremap <silent> ,gy <Cmd>lua require'gitlinker'.get_buf_range_url('n')
nnoremap ,dp :GdbStartPDB python -m pdb %
nnoremap <silent> ,fr :Leaderf mru --popup --absolute-path
nnoremap <silent> ,fb :Leaderf buffer --popup
nnoremap <silent> ,ft :Leaderf bufTag --popup
nnoremap <silent> ,fh :Leaderf help --popup
nnoremap <silent> ,fg :Leaderf rg --no-messages --popup
nnoremap <silent> ,ff :Leaderf file --popup
nnoremap ,cl <Cmd>call utils#ToggleCursorCol()
nnoremap ,y <Cmd>%yank
nnoremap ,st <Cmd>call utils#SynGroup()
nnoremap ,  <Cmd>StripTrailingWhitespace
nnoremap ,cd <Cmd>lcd %:p:h<Cmd>pwd
nnoremap <expr> ,v printf('`[%s`]', getregtype()[0])
nnoremap <silent> ,ev <Cmd>tabnew $MYVIMRC | tcd %:h
nnoremap <silent> ,Q <Cmd>qa!
nnoremap <silent> ,q <Cmd>x
nnoremap <silent> ,w <Cmd>update
nnoremap ,P m`Op``
nnoremap ,p m`op``
nnoremap / /\v
nnoremap 0 g0
xnoremap ; :
nnoremap ; :
nnoremap <silent> <aÞ <Nop>
nnoremap <silent> <iÞ <Nop>
nnoremap <silent> <Þ <Nop>
nnoremap <silent> < <Cmd>lua require("which-key").show("<", {mode = "n", auto = true})
xnoremap < <gv
nnoremap <silent> >aÞ <Nop>
nnoremap <silent> >iÞ <Nop>
nnoremap <silent> >Þ <Nop>
nnoremap <silent> > <Cmd>lua require("which-key").show(">", {mode = "n", auto = true})
xnoremap > >gv
xnoremap <silent> @(targetsÞ <Nop>
xnoremap <silent> @(targetÞ <Nop>
xnoremap <silent> @(targeÞ <Nop>
xnoremap <silent> @(targÞ <Nop>
xnoremap <silent> @(tarÞ <Nop>
xnoremap <silent> @(taÞ <Nop>
xnoremap <silent> @(tÞ <Nop>
xnoremap <silent> @(Þ <Nop>
xnoremap <silent> @Þ <Nop>
xnoremap <silent> @ <Cmd>lua require("which-key").show("@", {mode = "v", auto = true})
xnoremap <silent> @(targets) :call targets#do()
onoremap <silent> @(targets) :call targets#do()
xmap <expr> A targets#e('o', 'A', 'A')
omap <expr> A targets#e('o', 'A', 'A')
nnoremap C "_C
xnoremap H ^
nnoremap H ^
xmap <expr> I targets#e('o', 'I', 'I')
omap <expr> I targets#e('o', 'I', 'I')
xnoremap L g_
nnoremap L g_
nnoremap Y y$
xnoremap <silent> [Þ <Nop>
xnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "v", auto = true})
nnoremap <silent> [Þ <Nop>
nnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "n", auto = true})
omap <silent> [% <Plug>(matchup-[%)
xmap <silent> [% <Plug>(matchup-[%)
nmap <silent> [% <Plug>(matchup-[%)
nnoremap <silent> [Q <Cmd>cfirstzv
nnoremap <silent> [q <Cmd>cpreviouszv
nnoremap <silent> [L <Cmd>lfirstzv
nnoremap <silent> [l <Cmd>lpreviouszv
nnoremap <silent> \Þ <Nop>
nnoremap <silent> \ <Cmd>lua require("which-key").show("\\", {mode = "n", auto = true})
nnoremap <silent> \d <Cmd>bprevious | bdelete #
nnoremap <silent> \x <Cmd>windo lclose | cclose 
xnoremap <silent> ]Þ <Nop>
xnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "v", auto = true})
nnoremap <silent> ]Þ <Nop>
nnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "n", auto = true})
omap <silent> ]% <Plug>(matchup-]%)
xmap <silent> ]% <Plug>(matchup-]%)
nmap <silent> ]% <Plug>(matchup-]%)
nnoremap <silent> ]Q <Cmd>clastzv
nnoremap <silent> ]q <Cmd>cnextzv
nnoremap <silent> ]L <Cmd>llastzv
nnoremap <silent> ]l <Cmd>lnextzv
nnoremap ^ g^
nnoremap <silent> ` <Cmd>lua require("which-key").show("`", {mode = "n", auto = true})
xmap as <Plug>(textobj-sandwich-query-a)
omap as <Plug>(textobj-sandwich-query-a)
xmap ab <Plug>(textobj-sandwich-auto-a)
omap ab <Plug>(textobj-sandwich-auto-a)
xmap <expr> a targets#e('o', 'a', 'a')
omap <expr> a targets#e('o', 'a', 'a')
omap <silent> a% <Plug>(matchup-a%)
xmap <silent> a% <Plug>(matchup-a%)
nnoremap <silent> caÞ <Nop>
nnoremap <silent> ca <Cmd>lua require("which-key").show("ca", {mode = "n", auto = true})
nnoremap <silent> ciÞ <Nop>
nnoremap <silent> ci <Cmd>lua require("which-key").show("ci", {mode = "n", auto = true})
xnoremap c "_c
nnoremap cc "_cc
nnoremap c "_c
nnoremap <silent> dÞ <Nop>
nnoremap <silent> d <Cmd>lua require("which-key").show("d", {mode = "n", auto = true})
nnoremap <silent> daÞ <Nop>
nnoremap <silent> diÞ <Nop>
nmap g> <Plug>(swap-next)
nmap g< <Plug>(swap-prev)
xmap gs <Plug>(swap-interactive)
nmap gs <Plug>(swap-interactive)
xnoremap <silent> gÞ <Nop>
xnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "v", auto = true})
nnoremap <silent> g~aÞ <Nop>
nnoremap <silent> g~iÞ <Nop>
nnoremap <silent> g~Þ <Nop>
nnoremap <silent> gUaÞ <Nop>
nnoremap <silent> gUiÞ <Nop>
nnoremap <silent> gUÞ <Nop>
nnoremap <silent> guaÞ <Nop>
nnoremap <silent> guiÞ <Nop>
nnoremap <silent> guÞ <Nop>
nnoremap <silent> gÞ <Nop>
nnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "n", auto = true})
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
omap <silent> g% <Ignore><Plug>(matchup-g%)
xmap <silent> g% <Plug>(matchup-g%)
nmap <silent> g% <Plug>(matchup-g%)
nmap ga <Plug>(UnicodeGA)
nnoremap gB <Cmd>call buf_utils#GoToBuffer(v:count, "backward")
nnoremap gb <Cmd>call buf_utils#GoToBuffer(v:count, "forward")
xmap is <Plug>(textobj-sandwich-query-i)
omap is <Plug>(textobj-sandwich-query-i)
xmap ib <Plug>(textobj-sandwich-auto-i)
omap ib <Plug>(textobj-sandwich-auto-i)
xmap <expr> i targets#e('o', 'i', 'i')
omap <expr> i targets#e('o', 'i', 'i')
omap <silent> i% <Plug>(matchup-i%)
xmap <silent> i% <Plug>(matchup-i%)
onoremap iB <Cmd>call text_obj#Buffer()
xnoremap iB <Cmd>call text_obj#Buffer()
onoremap iu <Cmd>call text_obj#URL()
xnoremap iu <Cmd>call text_obj#URL()
nnoremap <expr> j v:count == 0 ? 'gj' : 'j'
nnoremap <expr> k v:count == 0 ? 'gk' : 'k'
xnoremap p "_cp
xnoremap <silent> sÞ <Nop>
xnoremap <silent> s <Cmd>lua require("which-key").show("s", {mode = "v", auto = true})
nnoremap <silent> sÞ <Nop>
nmap srb <Plug>(sandwich-replace-auto)
xmap sr <Plug>(sandwich-replace)
nmap sr <Plug>(sandwich-replace)
nmap sdb <Plug>(sandwich-delete-auto)
xmap sd <Plug>(sandwich-delete)
nmap sd <Plug>(sandwich-delete)
omap sa <Plug>(sandwich-add)
xmap sa <Plug>(sandwich-add)
nmap sa <Plug>(sandwich-add)
omap s <Nop>
nnoremap <silent> s <Cmd>lua require("which-key").show("s", {mode = "n", auto = true})
nnoremap <silent> vÞ <Nop>
nnoremap <silent> v <Cmd>lua require("which-key").show("v", {mode = "n", auto = true})
nnoremap <silent> vaÞ <Nop>
nnoremap <silent> viÞ <Nop>
nnoremap <silent> yÞ <Nop>
nnoremap <silent> y <Cmd>lua require("which-key").show("y", {mode = "n", auto = true})
nnoremap <silent> yaÞ <Nop>
nnoremap <silent> yiÞ <Nop>
xnoremap <silent> zÞ <Nop>
xnoremap <silent> z <Cmd>lua require("which-key").show("z", {mode = "v", auto = true})
nnoremap <silent> zfaÞ <Nop>
nnoremap <silent> zfiÞ <Nop>
nnoremap <silent> zfÞ <Nop>
nnoremap <silent> zÞ <Nop>
nnoremap <silent> z <Cmd>lua require("which-key").show("z", {mode = "n", auto = true})
omap <silent> z% <Plug>(matchup-z%)
xmap <silent> z% <Plug>(matchup-z%)
nmap <silent> z% <Plug>(matchup-z%)
smap <silent> <Plug>(cmpu-jump-backwards) :call UltiSnips#JumpBackwards()
smap <silent> <Plug>(cmpu-jump-forwards) :call UltiSnips#JumpForwards()
smap <silent> <Plug>(cmpu-expand) :call UltiSnips#ExpandSnippetOrJump()
snoremap <C-R> "_c
snoremap <silent> <C-H> "_c
snoremap <silent> <Del> "_c
snoremap <silent> <BS> "_c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
xnoremap <silent> <C-J> :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> <C-J> :call UltiSnips#ExpandSnippetOrJump()
vmap <F4> <Plug>(MakeDigraph)
nmap <F4> <Plug>(MakeDigraph)
noremap <silent> <Plug>(swap-textobject-a) :call swap#textobj#select('a')
noremap <silent> <Plug>(swap-textobject-i) :call swap#textobj#select('i')
nnoremap <silent> <Plug>(swap-next) :call swap#prerequisite('n', repeat([['#', '#+1']], v:count1))g@l
nnoremap <silent> <Plug>(swap-prev) :call swap#prerequisite('n', repeat([['#', '#-1']], v:count1))g@l
xnoremap <silent> <Plug>(swap-interactive) :call swap#prerequisite('x')gvg@
nnoremap <silent> <Plug>(swap-interactive) :call swap#prerequisite('n')g@l
xnoremap <silent> <SNR>46_(matchup-%Þ <Nop>
xnoremap <silent> <SNR>46_(matchup-g%Þ <Nop>
xnoremap <silent> <SNR>46_(matchup-gÞ <Nop>
xnoremap <silent> <SNR>46_(matchup-z%Þ <Nop>
xnoremap <silent> <SNR>46_(matchup-zÞ <Nop>
xnoremap <silent> <SNR>46_(matchup-[%Þ <Nop>
xnoremap <silent> <SNR>46_(matchup-[Þ <Nop>
xnoremap <silent> <SNR>46_(matchup-Z%Þ <Nop>
xnoremap <silent> <SNR>46_(matchup-ZÞ <Nop>
xnoremap <silent> <SNR>46_(matchup-]%Þ <Nop>
xnoremap <silent> <SNR>46_(matchup-]Þ <Nop>
xnoremap <silent> <SNR>46_(matchup-Þ <Nop>
xnoremap <silent> <SNR>46_(matchupÞ <Nop>
xnoremap <silent> <SNR>46_(matchuÞ <Nop>
xnoremap <silent> <SNR>46_(matchÞ <Nop>
xnoremap <silent> <SNR>46_(matcÞ <Nop>
xnoremap <silent> <SNR>46_(matÞ <Nop>
xnoremap <silent> <SNR>46_(maÞ <Nop>
xnoremap <silent> <SNR>46_(mÞ <Nop>
xnoremap <silent> <SNR>46_(Þ <Nop>
xnoremap <silent> <SNR>46_Þ <Nop>
xnoremap <silent> <SNR>46Þ <Nop>
xnoremap <silent> <SNR>4Þ <Nop>
xnoremap <silent> <SNR>Þ <Nop>
xnoremap <silent> <SNR> <Cmd>lua require("which-key").show("��R", {mode = "v", auto = true})
nnoremap <silent> <SNR>46_(wiseÞ <Nop>
nnoremap <silent> <SNR>46_(wisÞ <Nop>
nnoremap <silent> <SNR>46_(wiÞ <Nop>
nnoremap <silent> <SNR>46_(wÞ <Nop>
nnoremap <silent> <SNR>46_(Þ <Nop>
nnoremap <silent> <SNR>46_Þ <Nop>
nnoremap <silent> <SNR>46Þ <Nop>
nnoremap <silent> <SNR>4Þ <Nop>
nnoremap <silent> <SNR>Þ <Nop>
nnoremap <silent> <SNR> <Cmd>lua require("which-key").show("��R", {mode = "n", auto = true})
nnoremap <silent> <C-W>Þ <Nop>
nnoremap <silent> <C-W> <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
xnoremap <silent> <expr> <Plug>(textobj-sandwich-literal-query-a) textobj#sandwich#query('x', 'a', {}, [])
onoremap <silent> <expr> <Plug>(textobj-sandwich-literal-query-a) textobj#sandwich#query('o', 'a', {}, [])
nnoremap <silent> <expr> <Plug>(textobj-sandwich-literal-query-a) textobj#sandwich#query('n', 'a', {}, [])
xnoremap <silent> <expr> <Plug>(textobj-sandwich-literal-query-i) textobj#sandwich#query('x', 'i', {}, [])
onoremap <silent> <expr> <Plug>(textobj-sandwich-literal-query-i) textobj#sandwich#query('o', 'i', {}, [])
nnoremap <silent> <expr> <Plug>(textobj-sandwich-literal-query-i) textobj#sandwich#query('n', 'i', {}, [])
xnoremap <silent> <expr> <Plug>(textobj-sandwich-query-a) textobj#sandwich#query('x', 'a')
onoremap <silent> <expr> <Plug>(textobj-sandwich-query-a) textobj#sandwich#query('o', 'a')
nnoremap <silent> <expr> <Plug>(textobj-sandwich-query-a) textobj#sandwich#query('n', 'a')
xnoremap <silent> <expr> <Plug>(textobj-sandwich-query-i) textobj#sandwich#query('x', 'i')
onoremap <silent> <expr> <Plug>(textobj-sandwich-query-i) textobj#sandwich#query('o', 'i')
nnoremap <silent> <expr> <Plug>(textobj-sandwich-query-i) textobj#sandwich#query('n', 'i')
xnoremap <silent> <expr> <Plug>(textobj-sandwich-auto-a) textobj#sandwich#auto('x', 'a')
onoremap <silent> <expr> <Plug>(textobj-sandwich-auto-a) textobj#sandwich#auto('o', 'a')
nnoremap <silent> <expr> <Plug>(textobj-sandwich-auto-a) textobj#sandwich#auto('n', 'a')
xnoremap <silent> <expr> <Plug>(textobj-sandwich-auto-i) textobj#sandwich#auto('x', 'i')
onoremap <silent> <expr> <Plug>(textobj-sandwich-auto-i) textobj#sandwich#auto('o', 'i')
nnoremap <silent> <expr> <Plug>(textobj-sandwich-auto-i) textobj#sandwich#auto('n', 'i')
nmap <silent> <Plug>(sandwich-replace-auto) <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
nmap <silent> <Plug>(sandwich-delete-auto) <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
xmap <silent> <Plug>(sandwich-replace) <Plug>(operator-sandwich-replace)
nmap <silent> <Plug>(sandwich-replace) <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
xmap <silent> <Plug>(sandwich-delete) <Plug>(operator-sandwich-delete)
nmap <silent> <Plug>(sandwich-delete) <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
omap <silent> <Plug>(sandwich-add) <Plug>(operator-sandwich-add)
xmap <silent> <Plug>(sandwich-add) <Plug>(operator-sandwich-add)
nmap <silent> <Plug>(sandwich-add) <Plug>(operator-sandwich-add)
xnoremap <silent> <Plug>(textobj-sandwich-tag-a) :call sandwich#magicchar#t#at()
xnoremap <silent> <Plug>(textobj-sandwich-tag-i) :call sandwich#magicchar#t#it()
onoremap <silent> <Plug>(textobj-sandwich-tag-a) :call sandwich#magicchar#t#at()
onoremap <silent> <Plug>(textobj-sandwich-tag-i) :call sandwich#magicchar#t#it()
xnoremap <silent> <Plug>(textobj-sandwich-tagname-a) :call sandwich#magicchar#t#a()
xnoremap <silent> <Plug>(textobj-sandwich-tagname-i) :call sandwich#magicchar#t#i()
onoremap <silent> <Plug>(textobj-sandwich-tagname-a) :call sandwich#magicchar#t#a()
onoremap <silent> <Plug>(textobj-sandwich-tagname-i) :call sandwich#magicchar#t#i()
xnoremap <silent> <Plug>(textobj-sandwich-function-a) :call sandwich#magicchar#f#a('x')
xnoremap <silent> <Plug>(textobj-sandwich-function-ap) :call sandwich#magicchar#f#ap('x')
onoremap <silent> <Plug>(textobj-sandwich-function-a) :call sandwich#magicchar#f#a('o')
onoremap <silent> <Plug>(textobj-sandwich-function-ap) :call sandwich#magicchar#f#ap('o')
xnoremap <silent> <Plug>(textobj-sandwich-function-i) :call sandwich#magicchar#f#i('x')
xnoremap <silent> <Plug>(textobj-sandwich-function-ip) :call sandwich#magicchar#f#ip('x')
onoremap <silent> <Plug>(textobj-sandwich-function-i) :call sandwich#magicchar#f#i('o')
onoremap <silent> <Plug>(textobj-sandwich-function-ip) :call sandwich#magicchar#f#ip('o')
nnoremap <Plug>(operator-sandwich-gv) gv
noremap <Plug>(operator-sandwich-g@) g@
noremap <silent> <Plug>(operator-sandwich-replace-visualrepeat) :call operator#sandwich#visualrepeat('replace')
noremap <silent> <Plug>(operator-sandwich-delete-visualrepeat) :call operator#sandwich#visualrepeat('delete')
noremap <silent> <Plug>(operator-sandwich-add-visualrepeat) :call operator#sandwich#visualrepeat('add')
nnoremap <silent> <expr> <Plug>(operator-sandwich-dot) operator#sandwich#dot()
nnoremap <silent> <expr> <Plug>(operator-sandwich-predot) operator#sandwich#predot()
onoremap <silent> <expr> <Plug>(operator-sandwich-squash-count) operator#sandwich#squash_count()
onoremap <silent> <expr> <Plug>(operator-sandwich-release-count) operator#sandwich#release_count()
onoremap <silent> <expr> <Plug>(operator-sandwich-synchro-count) operator#sandwich#synchro_count()
xnoremap <silent> <Plug>(operator-sandwich-replace-query1st) :call operator#sandwich#query1st('replace', 'x')
nnoremap <silent> <Plug>(operator-sandwich-replace-query1st) :call operator#sandwich#query1st('replace', 'n')
xnoremap <silent> <Plug>(operator-sandwich-add-query1st) :call operator#sandwich#query1st('add', 'x')
nnoremap <silent> <Plug>(operator-sandwich-add-query1st) :call operator#sandwich#query1st('add', 'n')
xnoremap <silent> <Plug>(operator-sandwich-replace-pre) :call operator#sandwich#prerequisite('replace', 'x')
nnoremap <silent> <Plug>(operator-sandwich-replace-pre) :call operator#sandwich#prerequisite('replace', 'n')
xnoremap <silent> <Plug>(operator-sandwich-delete-pre) :call operator#sandwich#prerequisite('delete', 'x')
nnoremap <silent> <Plug>(operator-sandwich-delete-pre) :call operator#sandwich#prerequisite('delete', 'n')
xnoremap <silent> <Plug>(operator-sandwich-add-pre) :call operator#sandwich#prerequisite('add', 'x')
nnoremap <silent> <Plug>(operator-sandwich-add-pre) :call operator#sandwich#prerequisite('add', 'n')
omap <silent> <Plug>(operator-sandwich-replace) <Plug>(operator-sandwich-g@)
xmap <silent> <Plug>(operator-sandwich-replace) <Plug>(operator-sandwich-replace-pre)<Plug>(operator-sandwich-gv)<Plug>(operator-sandwich-g@)
nmap <silent> <Plug>(operator-sandwich-replace) <Plug>(operator-sandwich-replace-pre)<Plug>(operator-sandwich-g@)
omap <silent> <Plug>(operator-sandwich-delete) <Plug>(operator-sandwich-g@)
xmap <silent> <Plug>(operator-sandwich-delete) <Plug>(operator-sandwich-delete-pre)<Plug>(operator-sandwich-gv)<Plug>(operator-sandwich-g@)
nmap <silent> <Plug>(operator-sandwich-delete) <Plug>(operator-sandwich-delete-pre)<Plug>(operator-sandwich-g@)
omap <silent> <Plug>(operator-sandwich-add) <Plug>(operator-sandwich-g@)
xmap <silent> <Plug>(operator-sandwich-add) <Plug>(operator-sandwich-add-pre)<Plug>(operator-sandwich-gv)<Plug>(operator-sandwich-g@)
nmap <silent> <Plug>(operator-sandwich-add) <Plug>(operator-sandwich-add-pre)<Plug>(operator-sandwich-g@)
nmap <silent> <2-LeftMouse> <Plug>(matchup-double-click)
nnoremap <Plug>(matchup-reload) :MatchupReload
nnoremap <silent> <Plug>(matchup-double-click) :call matchup#text_obj#double_click()
onoremap <silent> <Plug>(matchup-a%) :call matchup#text_obj#delimited(0, 0, 'delim_all')
onoremap <silent> <Plug>(matchup-i%) :call matchup#text_obj#delimited(1, 0, 'delim_all')
xnoremap <silent> <Plug>(matchup-a%) :call matchup#text_obj#delimited(0, 1, 'delim_all')
xnoremap <silent> <Plug>(matchup-i%) :call matchup#text_obj#delimited(1, 1, 'delim_all')
onoremap <silent> <Plug>(matchup-Z%) :call matchup#motion#op('Z%')
xnoremap <silent> <SNR>46_(matchup-Z%) :call matchup#motion#jump_inside_prev(1)
nnoremap <silent> <Plug>(matchup-Z%) :call matchup#motion#jump_inside_prev(0)
onoremap <silent> <Plug>(matchup-z%) :call matchup#motion#op('z%')
xnoremap <silent> <SNR>46_(matchup-z%) :call matchup#motion#jump_inside(1)
nnoremap <silent> <Plug>(matchup-z%) :call matchup#motion#jump_inside(0)
onoremap <silent> <Plug>(matchup-[%) :call matchup#motion#op('[%')
onoremap <silent> <Plug>(matchup-]%) :call matchup#motion#op(']%')
xnoremap <silent> <SNR>46_(matchup-[%) :call matchup#motion#find_unmatched(1, 0)
xnoremap <silent> <SNR>46_(matchup-]%) :call matchup#motion#find_unmatched(1, 1)
nnoremap <silent> <Plug>(matchup-[%) :call matchup#motion#find_unmatched(0, 0)
nnoremap <silent> <Plug>(matchup-]%) :call matchup#motion#find_unmatched(0, 1)
onoremap <silent> <Plug>(matchup-g%) :call matchup#motion#op('g%')
xnoremap <silent> <SNR>46_(matchup-g%) :call matchup#motion#find_matching_pair(1, 0)
onoremap <silent> <Plug>(matchup-%) :call matchup#motion#op('%')
xnoremap <silent> <SNR>46_(matchup-%) :call matchup#motion#find_matching_pair(1, 1)
nnoremap <silent> <Plug>(matchup-g%) :call matchup#motion#find_matching_pair(0, 0)
nnoremap <silent> <Plug>(matchup-%) :call matchup#motion#find_matching_pair(0, 1)
nnoremap <silent> <expr> <SNR>46_(wise) empty(g:v_motion_force) ? 'v' : g:v_motion_force
nnoremap <silent> <Plug>(matchup-hi-surround) :call matchup#matchparen#highlight_surrounding()
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
xnoremap <M-j> <Cmd>call utils#MoveSelection("down")
xnoremap <M-k> <Cmd>call utils#MoveSelection("up")
nnoremap <M-j> <Cmd>call utils#SwitchLine(line("."), "down")
nnoremap <M-k> <Cmd>call utils#SwitchLine(line("."), "up")
nnoremap <F11> <Cmd>set spell!
nnoremap <C-L> <Cmd>nohlsearch|diffupdate|normal! 
cnoremap  <Home>
inoremap  <Home>
cnoremap <expr>  wilder#can_reject_completion()  ?  wilder#reject_completion()  :  ''
imap  <Plug>(UnicodeFuzzy)
inoremap <silent> Þ <Nop>
inoremap <silent>  <Cmd>lua require("which-key").show("\7", {mode = "i", auto = true})
imap <silent> % <Plug>(matchup-c_g%)
cnoremap <expr> 	 wilder#in_context()  ?  wilder#next()  :  '	'
inoremap <silent> <NL> =UltiSnips#ExpandSnippetOrJump()
inoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
cnoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
inoremap  b~lea
inoremap  viwUea
inoremap  u
inoremap <silent> Þ <Nop>
inoremap <silent>  <Cmd>lua require("which-key").show("\24", {mode = "i", auto = true})
imap  <Plug>(HTMLEntityComplete)
imap  <Plug>(UnicodeComplete)
imap  <Plug>(DigraphComplete)
cnoremap <expr>  wilder#can_accept_completion()  ?  wilder#accept_completion()  :  ''
inoremap ! !u
inoremap , ,u
inoremap . .u
inoremap : :u
inoremap ; ;u
inoremap ? ?u
inoremap <expr> k better_escape#EscapeInsertOrNot(['j'], "k")
cabbr <expr> git (getcmdtype() == ":" && getcmdpos() <= 4) ? 'Git' : 'git'
cabbr <expr> ps (getcmdtype() == ":" && getcmdpos() <= 3) ? 'Lazy sync' : 'ps'
cabbr <expr> pc (getcmdtype() == ":" && getcmdpos() <= 3) ? 'Lazy clean' : 'pc'
cabbr <expr> pud (getcmdtype() == ":" && getcmdpos() <= 4) ? 'Lazy update' : 'pud'
cabbr <expr> pi (getcmdtype() == ":" && getcmdpos() <= 3) ? 'Lazy install' : 'pi'
cabbr <expr> man (getcmdtype() == ":" && getcmdpos() <= 4) ? 'Man' : 'man'
cabbr <expr> edit (getcmdtype() == ":" && getcmdpos() <= 5) ? 'Edit' : 'edit'
iabbr serveral several
iabbr reqire require
let &cpo=s:cpo_save
unlet s:cpo_save
set autowrite
set backup
set backupcopy=yes
set backupdir=~/.local/share/nvim/backup//
set backupskip=*.o,*.obj,*.dylib,*.bin,*.dll,*.exe,*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**,*.jpg,*.png,*.jpeg,*.bmp,*.gif,*.tiff,*.svg,*.ico,*.pyc,*.pkl,*.DS_Store,*.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz,*.xdv
set clipboard=unnamedplus
set complete=.,kspell
set completeopt=menu,menuone
set confirm
set diffopt=vertical,filler,closeoff,context:3,internal,indent-heuristic,algorithm:histogram,linematch:60
set expandtab
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fillchars=fold:\ ,vert:│,eob:\ ,msgsep:���,diff:╱
set formatoptions=tcqjmM
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor20
set helplang=en
set history=500
set ignorecase
set indentkeys=!^F,o,O,0(,0),],},&,0=\\item\ ,0=\\item[,0=\\else,0=\\fi,0=\\rangle,0=\\rbrace,0=\\rvert,0=\\rVert,0=\\rfloor,0=\\rceil,0=\\urcorner
set isfname=@,48-57,/,.,-,_,+,#,$,%,~
set listchars=tab:▸\ ,extends:❯,precedes:❮,nbsp:␣
set noloadplugins
set matchpairs=(:),{:},[:],<:>,���:���,���:���,���:���,���:���,���:���,���:���
set mouse=nic
set mousemodel=popup
set mousescroll=ver:1,hor:0
set packpath=~/.local/nvim/share/nvim/runtime
set pumblend=10
set pumheight=10
set noruler
set runtimepath=~/.config/nvim,~/.local/share/nvim/site,~/.local/share/nvim/lazy/lazy.nvim,~/.local/share/nvim/lazy/vim-auto-save,~/.local/share/nvim/lazy/delimitMate,~/.local/share/nvim/lazy/vim-snippets,~/.local/share/nvim/lazy/ultisnips,~/.local/share/nvim/lazy/better-escape.vim,~/.local/share/nvim/lazy/vim-highlighturl,~/.local/share/nvim/lazy/hop.nvim,~/.local/share/nvim/lazy/cmp-nvim-ultisnips,~/.local/share/nvim/lazy/cmp-emoji,~/.local/share/nvim/lazy/cmp-omni,~/.local/share/nvim/lazy/cmp-buffer,~/.local/share/nvim/lazy/cmp-path,~/.local/share/nvim/lazy/lspkind-nvim,~/.local/share/nvim/lazy/nvim-cmp,~/.local/share/nvim/lazy/unicode.vim,~/.local/share/nvim/lazy/whitespace.nvim,~/.local/share/nvim/lazy/indent-blankline.nvim,~/.local/share/nvim/lazy/vim-swap,~/.local/share/nvim/lazy/which-key.nvim,~/.local/share/nvim/lazy/vim-indent-object,~/.local/share/nvim/lazy/vim-repeat,~/.local/share/nvim/lazy/vim-commentary,~/.local/share/nvim/lazy/fidget.nvim,~/.local/share/nvim/lazy/vim-sandwich,~/.local/share/nvim/lazy/nvim-notify,~/.local/share/nvim/lazy/lualine.nvim,~/.local/share/nvim/lazy/targets.vim,~/.local/share/nvim/lazy/nvim-web-devicons,~/.local/share/nvim/lazy/vim-fugitive,~/.local/share/nvim/lazy/gitlinker.nvim,~/.local/share/nvim/lazy/bufferline.nvim,~/.local/share/nvim/lazy/vimtex,~/.local/share/nvim/lazy/cmp-nvim-lsp,~/.local/share/nvim/lazy/nvim-lspconfig,~/.local/share/nvim/lazy/vim-matchup,~/.local/share/nvim/lazy/gruvbox-material,~/.local/share/nvim/lazy/plenary.nvim,~/.local/share/nvim/lazy/diffview.nvim,~/.local/share/nvim/lazy/wilder.nvim,~/.local/share/nvim/lazy/dressing.nvim,~/.local/share/nvim/lazy/dashboard-nvim,~/.local/share/nvim/lazy/nvim-nonicons,~/.local/share/nvim/lazy/gitsigns.nvim,~/.local/nvim/share/nvim/runtime,~/.local/nvim/lib/nvim,~/.local/share/nvim/lazy/ultisnips/after,~/.local/share/nvim/lazy/cmp-nvim-ultisnips/after,~/.local/share/nvim/lazy/cmp-emoji/after,~/.local/share/nvim/lazy/cmp-omni/after,~/.local/share/nvim/lazy/cmp-buffer/after,~/.local/share/nvim/lazy/cmp-path/after,~/.local/share/nvim/lazy/indent-blankline.nvim/after,~/.local/share/nvim/lazy/vim-sandwich/after,~/.local/share/nvim/lazy/vimtex/after,~/.local/share/nvim/lazy/cmp-nvim-lsp/after,~/.local/share/nvim/lazy/vim-matchup/after,~/.local/share/nvim/lazy/gruvbox-material/after,~/.config/nvim/after,~/.local/state/nvim/lazy/readme
set scrolloff=3
set shiftround
set shiftwidth=2
set shortmess=filnxtToOFcSI
set showbreak=↪
set noshowmode
set showtabline=2
set smartcase
set softtabstop=2
set spelllang=en,cjk
set spellsuggest=best,9
set splitbelow
set splitright
set statusline=%#Normal#
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.sty,.cls,.log,.aux,.bbl,.out,.blg,.brf,.cb,.dvi,.fdb_latexmk,.fls,.idx,.ilg,.ind,.inx,.pdf,.synctex.gz,.toc
set noswapfile
set synmaxcol=250
set tabline=%!v:lua.nvim_bufferline()
set tabstop=2
set termguicolors
set textwidth=120
set tildeop
set timeoutlen=500
set title
set titlestring=%{utils#Get_titlestr()}
set undofile
set updatetime=500
set virtualedit=block
set visualbell
set wildcharm=<Tab>
set wildignore=*.o,*.obj,*.dylib,*.bin,*.dll,*.exe,*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**,*.jpg,*.png,*.jpeg,*.bmp,*.gif,*.tiff,*.svg,*.ico,*.pyc,*.pkl,*.DS_Store,*.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz,*.xdv
set wildignorecase
set wildmode=list:longest
set window=52
" vim: set ft=vim :
