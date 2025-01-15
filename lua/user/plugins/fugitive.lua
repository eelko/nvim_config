return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gd', '<cmd>Gvdiffsplit<CR>', { desc = 'git diff against index' })
  end,
}
