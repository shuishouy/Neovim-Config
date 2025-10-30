return {
  {
    "nvim-treesitter/nvim-treesitter", 
    branch = 'main', 
    lazy = false, 
    -- build = ":TSUpdate",
    opts = {
      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'bash', 'c', 'cpp', 'lua', 'javascript', 'python' },
        callback = function() vim.treesitter.start() end,
      })
    }
  }
}
