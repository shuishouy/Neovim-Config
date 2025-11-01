return {
  'numToStr/Comment.nvim',
  vim.keymap.set("n", "<C-/>", function()
    require('Comment.api').toggle.linewise.current()
  end),

  vim.keymap.set('x', '<C-/>', function()
    local api = require 'Comment.api'
    local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)
    vim.api.nvim_feedkeys(esc, 'nx', false)
    api.locked 'toggle.linewise'(vim.fn.visualmode())
    vim.cmd 'normal! gv'
  end, { desc = 'Comment toggle linewise (visual) and preserve the visual selection' }),
  opts = { }
}
