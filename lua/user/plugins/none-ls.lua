return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'
    null_ls.setup {
      debug = true,
    }
    vim.keymap.set('n', '<leader>fo', vim.lsp.buf.format, {})
  end,
}
