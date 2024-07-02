
local lspconfig = require("lspconfig")

for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config')..'/lua/lsp_clients', [[v:val =~ '\.lua$']])) do
	local lspClient = file:gsub('%.lua$', '')
	local err,config = pcall(require, "lsp_clients."..lspClient)
	if not err then
		return
	end
	lspconfig[lspClient].setup(config)
end
