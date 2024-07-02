local err, _ = pcall(require, "rocks")

if not err then
	print(vim.inspect("Failed to load rocks.nvim"))
	return
end

local config = require("config")
local g = vim.g
local o = vim.opt

for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config')..'/lua/plugins', [[v:val =~ '\.lua$']])) do
  require('plugins.'..file:gsub('%.lua$', ''))
end

for key, value in pairs(config.global) do g[key] = value end

for key, value in pairs(config.options) do o[key] = value end

for _, value in pairs(config.mapping) do
    vim.api.nvim_set_keymap(value.mode, value.bidding, value.command, value.options)
end

vim.cmd([[colorscheme ]] .. config.theme)
