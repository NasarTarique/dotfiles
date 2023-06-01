
require('mason').setup()

-- Ensure the servers above are installed
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers),
}

mason_lspconfig.setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = servers[server_name],
    }
  end,
}
-- -- import mason plugin safely
-- local mason_status, mason = pcall(require, "mason")
-- if not mason_status then
--   return
-- end
--
-- -- import mason-lspconfig plugin safely
-- local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
-- if not mason_lspconfig_status then
--   return
-- end
--
-- -- import mason-null-ls plugin safely
-- -- local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
-- -- if not mason_null_ls_status then
-- --   return
-- -- end
--
-- -- enable mason
-- mason.setup()
--
-- mason_lspconfig.setup({
--   -- list of servers for mason to install
--   ensure_installed = {
--     "tsserver",
--     "html",
--     "cssls",
--     "tailwindcss",
--     "lua_ls",
--     "emmet_ls",
--   },
--   -- auto-install configured servers (with lspconfig)
--   automatic_installation = true, -- not the same as ensure_installed
-- })
--
-- -- mason_null_ls.setup({
-- --   -- list of formatters & linters for mason to install
-- --   ensure_installed = {
-- --     "prettier", -- ts/js formatter
-- --     "stylua", -- lua formatter
-- --     "eslint_d", -- ts/js linter
-- --   },
-- --   -- auto-install configured formatters & linters (with null-ls)
-- --   automatic_installation = true,
-- -- })
