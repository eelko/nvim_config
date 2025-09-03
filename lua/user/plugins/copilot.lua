return {
  {
    'github/copilot.vim',
  },
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    opts = {
      -- See Configuration section for options
    },
    keys = {
      { '<leader>ac', '<cmd>CopilotChat<cr>', desc = 'Open Copilot Chat' },
      { '<leader>ae', '<cmd>CopilotChatExplain<cr>', desc = 'Copilot Chat Explain ', mode = 'v' },
      { '<leader>ar', '<cmd>CopilotChatReview<cr>', desc = 'Copilot Chat Review', mode = 'v' },
      { '<leader>ah', '<cmd>CopilotChatHelp<cr>', desc = 'Copilot Chat Help' },
      { '<leader>af', '<cmd>CopilotChatFix<cr>', desc = 'Copilot Chat Fix', mode = 'v' },
      { '<leader>ao', '<cmd>CopilotChatOptimize<cr>', desc = 'Copilot Chat Optimize', mode = 'v' },
      { '<leader>at', '<cmd>CopilotChatGenerateTests<cr>', desc = 'Copilot Chat Generate Tests', mode = 'v' },
      { '<leader>ad', '<cmd>CopilotChatGenerateDocs<cr>', desc = 'Copilot Chat Generate Docs', mode = 'v' },
      { '<leader>an', '<cmd>CopilotChatNewSession<cr>', desc = 'Copilot Chat New Session' },
    },
  },
}
