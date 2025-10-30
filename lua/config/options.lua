local opt = vim.opt

-- 行号
opt.relativenumber = true -- 自动行号
opt.number = true
-- jk移动时光标下上方保留8行
opt.scrolloff = 8
opt.sidescrolloff = 8

-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = false

-- 光标行
opt.cursorline = true
-- 右侧参考线，超过表示代码太长了，考虑换行
-- vim.wo.colorcolumn = "105"

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- enable undo after written
vim.o.undofile = true
vim.o.undolevels = 1000

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"

-- 阻止在注释行换行时在新行添加注释开头
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- 退出insert模式自动切换英文输入
-- local ime_autogroup = vim.api.nvim_create_augroup("ImeAutoGroup", { clear = true })
vim.api.nvim_create_autocmd("InsertLeave", {
    -- group = ime_autogroup,
    callback = function ()
        vim.cmd(":silent :!fcitx5-remote -c")
    end
})
