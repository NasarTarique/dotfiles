vim.g.mapleader = " "
local keymap = vim.keymap 

--general keymap

--keymap.set("i","jk","<ESC>")
keymap.set("n","<leader>nh",":nohl<CR>")
keymap.set("n","<leader>+","<C-a>")
keymap.set("n","<leader>-","<C-x>")

keymap.set("n","<leader>sv","<C-w>v") --split vertical
keymap.set("n","<leader>sh","<C-w>s") -- split horizontal
keymap.set("n","<leader>se","<C-w>=") -- split equal
keymap.set("n","<leader>sx",":close<CR>") --split close

keymap.set("n","<leader>to",":tabnew<CR>") --open new tab 
keymap.set("n","<leader>tx",":tabclose<CR>") -- close tab 
keymap.set("n","<leader>tn",":tabn<CR>") -- next tab 
keymap.set("n","<leader>tp",":tabp<CR>") --previous tab

keymap.set("n","<leader>le",":Lex<CR>")

