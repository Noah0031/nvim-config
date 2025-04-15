return {
	{
		'projekt0n/github-nvim-theme',
		name = 'github-theme',
	},
	{
		'datsfilipe/vesper.nvim',
		name = 'vesper',
		config = function()
			require('vesper').setup({})
			vim.cmd.colorscheme('vesper')
		end
	}
}
