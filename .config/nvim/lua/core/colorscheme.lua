local status, _ = pcall(vim.cmd, "colorscheme tokyonight-night")
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "SignColumn", { ctermbg = "none" })
if not status then
	print("colorscheme not found ")
	return
end
