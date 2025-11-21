return {
  {
      "mason-org/mason.nvim",
    dependencies = {
      "mason-org/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { 'vim'}
              }
            }
          }
        }
      }
    },
    config = function(_, opts)
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")

      mason.setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        },
      })

      mason_lspconfig.setup({
        ensure_installed = ({
          "lua_ls"
        })
      })

      for server, config in pairs(opts.servers) do
        vim.lsp.config(server, config)
        vim.lsp.enable(server)
      end

      -- virtual text
      vim.diagnostic.config({
        virtual_text = true,
        underline = true
      })

      -- virtual lines
      vim.keymap.set("n", "gK", function ()
        local new_config = not vim.diagnostic.config().virtual_lines
        vim.diagnostic.config({ virtual_lines = new_config})
      end, { desc = 'Toggle diagnostic virtual_lines'})

    end,
  }
}
