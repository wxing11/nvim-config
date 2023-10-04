return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
        diagnostics = {
          enable = true,
          icons = {
		  hint = "",
		  info = "",
		  warning = "",
		  error = "",
        }
	}
  }
    vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>', {})
  end,
}
