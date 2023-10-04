return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
          ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "html", "css", "python", "json", "typescript" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
}

