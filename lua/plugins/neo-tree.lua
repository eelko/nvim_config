-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>e', '<cmd>Neotree toggle position=right<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          -- ['<leader>e'] = 'close_window',
          ['l'] = 'open',
          ['h'] = 'close_node',
          ['<space>'] = 'none',
          ['Y'] = {
            function(state)
              local node = state.tree:get_node()
              local path = node:get_id()
              vim.fn.setreg('+', path, 'c')
            end,
            desc = 'Copy Path to Clipboard',
          },
          ['P'] = { 'toggle_preview', config = { use_float = false } },
        },
      },
    },

    -- this auto command triggers neo-tree to update the selected file in the tree
    -- to the file in the buffer, but only if neo-tree is open.
    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
      callback = function()
        local manager = require 'neo-tree.sources.manager'
        local renderer = require 'neo-tree.ui.renderer'
        local state = manager.get_state 'filesystem'
        local window_exists = renderer.window_exists(state)
        if window_exists then
          local reveal_file = vim.fn.expand '%:p'
          if reveal_file == '' then
            reveal_file = vim.fn.getcwd()
          else
            local f = io.open(reveal_file, 'r')
            if f then
              f.close(f)
            else
              reveal_file = vim.fn.getcwd()
            end
          end
          require('neo-tree.command').execute {
            action = 'show',
            source = 'filesystem',
            position = 'right',
            reveal_file = reveal_file,
            reveal_force_cwd = true,
          }
        end
      end,
    }),
  },

  default_component_configs = {
    indent = {
      with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
      expander_collapsed = '',
      expander_expanded = '',
      expander_highlight = 'NeoTreeExpander',
    },
    git_status = {
      symbols = {
        unstaged = '󰄱',
        staged = '󰱒',
      },
    },
  },
}
