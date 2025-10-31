# Config for neovim

> <font color = green>**Version**</font>
> 
> neovim : 0.11.4
> 
> LuaJIT : 2.1.x



The config manages plugins with [lazy](https://github.com/folke/lazy.nvim)

## utilization

Clone this repo and move all things under this directory to `~/.config/nvim/`

## Installed Plugins

| name                                                                                 | type      |
| ------------------------------------------------------------------------------------ | --------- |
| [autopairs](https://github.com/windwp/nvim-autopairs)                                | auxiliary |
| [comment](https://github.com/numToStr/Comment.nvim)                                  | auxiliary |
| [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)           | format    |
| [nvim-lastplace](https://github.com/ethanholz/nvim-lastplace)                        | auxiliary |
| [lualine](https://github.com/nvim-lualine/lualine.nvim)                              | ornament  |
| [nvim-treesitter(main)](https:/github.com/nvim-treesitter/nvim-treesitter/tree/main) | format    |



## Keymaps

>  <font color=green>**NOTE:**</font>
> 
> particular keymaps will be set up in the particular plugin's `.lua` config file.



## Troublesshooting

- if error happend after add nvim-treesitter then  add the line below in ~/.bashrc or in /etc/profile  
  `export VIMRUNTIME=/path/to/nvim/runtime`

- if cpp couldn't find head file then add the line below in ~/.bashrc or in /etc/profile  ```export CPLUS_INCLUDE_PATH=/usr/include/c++/11:/usr/include/x86_64-linux-gnu/c++/11```
  (the last folder may not necessarily be '11')  
