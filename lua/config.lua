local config = {}

config.theme = "gruvbox"

config.global = {
	coq_settings = {
		auto_start = false,
	},
	blamer_enabled = true,
	blamer_delay = 500
}

config.options = {
	number = true,
	spell = false,
	signcolumn = "auto",
	wrap = false,
	shiftwidth = 2,
	tabstop = 2,
	fillchars = { eob = " " },
	termguicolors = true
}

config.mapping = {
	{
		mode = "",
		bidding = "<C-b>",
		command = ":NvimTreeToggle <CR>",
		options = {}
	}
}

return config
