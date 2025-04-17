return {
	{
		'projekt0n/github-nvim-theme',
		name = 'github-theme',
	},
	{
		'datsfilipe/vesper.nvim',
		name = 'vesper',
		config = function()
			require('vesper').setup({
				transparent = true, -- Boolean: Sets the background to transparent
				italics = {
					comments = true, -- Boolean: Italicizes comments
					keywords = false, -- Boolean: Italicizes keywords
					functions = false, -- Boolean: Italicizes functions
					strings = false, -- Boolean: Italicizes strings
					variables = false, -- Boolean: Italicizes variables
    },
    overrides = {}, -- A dictionary of group names, can be a function returning a dictionary or a table.
    palette_overrides = {}
			})
			vim.cmd.colorscheme('vesper')
		end
	}
}
