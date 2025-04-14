-- Use cpp parser for c files
-- vim.cmd("autocmd FileType c setlocal ft=cpp")

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {"c", "cpp", "lua", "vim", "python"},
			highlight = {
				enable = true,
			},
		})	
	end
}

