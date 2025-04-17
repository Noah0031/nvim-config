return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			local builtin = require('telescope.builtin')

			vim.keymap.set('n', '<C-p>', builtin.find_files,
			{ desc = 'Telescope find files' })
			vim.keymap.set('n', '<leader>fg', builtin.live_grep,
			{ desc = 'Telescope live grep' })

			vim.keymap.set('n', '<leader>vs', function()
				vim.cmd('vsplit')
				vim.cmd('wincmd l')
				builtin.find_files()
			end)
		end
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup {
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {}
					}
				}
			}
			require("telescope").load_extension("ui-select")
		end
	}
}
