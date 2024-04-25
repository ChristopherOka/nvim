-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
--
-- NOTE: Turn this on if you want the tree to open on startup
-- 
-- vim.api.nvim_create_augroup('neotree', {})
-- vim.api.nvim_create_autocmd('UiEnter', {
--   desc = 'Open Neotree automatically',
--   group = 'neotree',
--   callback = function()
--     if vim.fn.argc() == 0 then
--       vim.cmd 'Neotree toggle'
--     end
--   end,
-- })

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
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    filesystem = {
      window = {
        width = 25,
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
