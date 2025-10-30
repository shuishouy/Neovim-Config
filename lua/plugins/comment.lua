return {
  'numToStr/Comment.nvim',
  vim.keymap.set("n", "<C-/>", function()
    require("Comment.api").toggle.linewise.current()
  end),
  vim.keymap.set("v", "<C-/>", function()
    require("Comment.api").toggle.linewise()
  end),
  opts = { }
}
