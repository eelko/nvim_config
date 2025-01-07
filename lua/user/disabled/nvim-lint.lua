return {
  'mfussenegger/nvim-lint',
  config = function()
    require('lint').linters_by_ft = {
      python = { 'pylint' },
    }

    -- Set running linters on buffer save
    vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
      callback = function()
        require('lint').try_lint()
      end,
    })

    -- Set pylint to work in virtualenv
    require('lint').linters.pylint.cmd = 'python'
    require('lint').linters.pylint.args = { '-m', 'pylint', '--rcfile=pylint.ini', '*.py' }
  end,
}
