vim.diagnostic.config({
  virtual_text = false, -- Change the prefix for virtual text diagnostics
  signs = true, -- Show signs in the sign column
  update_in_insert = true, -- Update diagnostics while in insert mode
  underline = true, -- Underline diagnostics in the text
  severity_sort = true, -- Sort diagnostics by severity
  float = {
    border = 'rounded', -- Border style for floating diagnostics
    source = 'always', -- Show source of diagnostic
    header = "", -- Header text for the floating window
    prefix = "", -- Prefix text for the floating window
  },
})

-- Customize signs for different diagnostic levels
local signs = { Error = "✗", Warn = "!" , Hint = "⚑", Info = "ℹ" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
-- Automatically show floating diagnostics on cursor hold
-- vim.api.nvim_create_autocmd("<Space>w", {
--   pattern = "*",
--   callback = function()
--     vim.diagnostic.open_float()
--   end,
--   desc = "Show diagnostics in floating window on cursor hold"
-- })
vim.api.nvim_set_keymap('n', '<Space>w', ':lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true, desc = "Show diagnostics in floating window" })


-- Optional: Adjust the cursor hold timeout if needed
-- vim.o.updatetime = 200 -- Set the update time to 200 ms
return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      local mason_lspconfig = require("mason-lspconfig")

      mason_lspconfig.setup({
        ensure_installed = {
          "tsserver",
          -- "solargraph",
          "html",
          "lua_ls",
          "pyright",
          "pylsp",
        },
      })

      mason_lspconfig.setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({
            capabilities = capabilities
          })
        end
      })

      -- vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
