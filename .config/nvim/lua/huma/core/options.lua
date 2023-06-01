local opt = vim.opt --for conciseness

--line numbers
opt.relativenumber = true
opt.number = true


-- tabs & indent
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping

opt.wrap = false

-- search settings
--
opt.ignorecase = true
opt.smartcase = true
-- cursorline

opt.cursorline = true

-- appearance 
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")

opt.mouse:append("a")

-- splitting
opt.splitright = true
opt.splitbelow = true

-- iskeyword
opt.iskeyword:append("-")
