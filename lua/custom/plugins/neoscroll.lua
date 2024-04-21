return {
  'karb94/neoscroll.nvim',
  config = function()
    require('neoscroll').setup {
      easing_function = 'sine',
    }
    local t = {}
    t['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', '150' } }
    t['<C-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', '150' } }
    t['<C-b>'] = { 'scroll', { '-vim.api.nvim_win_get_height(0)', 'true', '450' } }
    t['<C-f>'] = { 'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '450' } }
    t['<C-y>'] = { 'scroll', { '-0.10', 'false', '100' } }
    t['<C-e>'] = { 'scroll', { '0.10', 'false', '100' } }
    t['zt'] = { 'zt', { '250' } }
    t['zz'] = { 'zz', { '250' } }
    t['zb'] = { 'zb', { '250' } }
    require('neoscroll.config').set_mappings(t)
  end,
}
