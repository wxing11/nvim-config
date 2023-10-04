return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional
        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    },
    config = function()
        local lsp = require('lsp-zero')
        lsp.preset("recommended")
        lsp.ensure_installed({
            'tsserver',
            'eslint',
        })

        -- tsserver config
        local nvim_lsp = require('lspconfig')
	nvim_lsp.tsserver.setup({
	    settings = {
		typescript = {
		    tsserver = {
			experimental = {
			    enableProjectDiagnostics = true
			}
		    }
		}
	    }
	})

        

        lsp.on_attach(function(client, bufnr)
            local opts = {buffer = bufnr, remap = false}
            vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
        end)
        lsp.setup()
        local cmp = require('cmp')
        local cmp_action = require('lsp-zero').cmp_action()
        local cmp_mappings = lsp.defaults.cmp_mappings({
            ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
            ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
            ['<Tab>'] = cmp.mapping.confirm({ select = true }),
            ['<C-Space>'] = cmp.mapping.complete(),
        })
        cmp.setup({
            mapping = cmp_mappings
        })
    end
}

