return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { {"nvim-lua/plenary.nvim"},
      {"kdheepak/lazygit.nvim"},
    -- {
    --   'nvim-telescope/telescope-fzf-native.nvim',
    --    build = function(plugin)
    --    local obj = vim.system({'cmake', '-S.', '-Bbuild', '-DCMAKE_BUILD_TYPE=Release'}, {cwd = plugin.dir}):wait()
    --    if obj.code ~= 0 then error(obj.stderr) end
    --         obj = vim.system({'cmake', '--build', 'build', '--config', 'Release'}, {cwd = plugin.dir}):wait()
    --    if obj.code ~= 0 then error(obj.stderr) end
    --         obj = vim.system({'cmake', '--install', 'build', '--prefix', 'build'}, {cwd = plugin.dir}):wait()
    --    if obj.code ~= 0 then error(obj.stderr) end
    --         end
    --   },
    },
    config = function()
      require("telescope").setup({
        -- defaults = {
        --   file_ignore_patterns = {},
        --   hidden = true,
        -- },
        extensions = {
          file_ignore_patterns = {},
          hidden = true,
          --  ['fzf'] = {
          --   fuzzy = true,                    -- false will only do exact matching
          --   override_generic_sorter = true,  -- override the generic sorter
          --   override_file_sorter = true,     -- override the file sorter
          --   case_mode = 'smart_case',        -- or 'ignore_case' or 'respect_case'
          -- },
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})
      require("telescope").load_extension('lazygit')
      -- require("telescope").load_extension('fzf')
      require("telescope").load_extension("ui-select")
    end,
  },
}
