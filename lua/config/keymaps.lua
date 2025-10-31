vim.g.mapleader = " " 
vim.g.maplocalleader = "\\"
local keymap = vim.keymap.set 
-- ---------- 插入模式 ---------- ---
keymap("i", "<C-e>", "<ESC>A")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
-- keymap("n", "<leader>sv", "<C-w>v") -- 垂直复制窗口 
-- keymap("n", "<leader>sh", "<C-w>s") -- 水平复制窗口
keymap("n", "<leader>sc", "<C-w>c") -- 关闭分窗口
keymap("n", "<leader>x", "<cmd>bd!<CR>") -- 关闭窗口
keymap("n", "<C-w><C-w>", "<cmd>bd!<CR>") -- 关闭窗口
keymap("n", "<C-t>", "<C-w>s<cmd>term<CR>i") -- 水平新增终端
-- 文件操作
keymap("n", "W", "<cmd>w!<CR>") -- 强制写入文件
keymap("n", "<C-s>", "<cmd>w<CR>") -- 写入文件
keymap("n", "Q", "<cmd>q!<CR>") -- 强制退出文件
keymap("n", "X", "<cmd>x!<CR>")
-- 分屏选择
-- keymap("n", "<leader>wh", "<C-w>h")
-- keymap("n", "<leader>wj", "<C-w>j")
-- keymap("n", "<leader>wk", "<C-w>k")
-- keymap("n", "<leader>wl", "<C-w>l")
-- 分屏调整
keymap("n", "<A-,>", "<C-w>>")
keymap("n", "<A-.>", "<C-w><")
keymap("n", "<A-- >", "<C-w>-")
keymap("n", "<A-= >", "<C-w>+")

-- 取消高亮
keymap("n", "<C-n>", ":nohl<CR>")
