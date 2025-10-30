# Config for neovim

> **versions**
> 
> **neovim : 0.11.4**
> 
> **LuaJIT : 2.1.x**

The config manages plugins with [lazy](https://github.com/folke/lazy.nvim)

## utilization

Clone this repo and move all things under this directory to `~/.config/nvim/`

## Troublesshooting

- if error happend after add nvim-treesitter then  add the line below in ~/.bashrc or in /etc/profile  
  `export VIMRUNTIME=/path/to/nvim/runtime`

- if cpp couldn't find head file then add the line below in ~/.bashrc or in /etc/profile  ```export CPLUS_INCLUDE_PATH=/usr/include/c++/11:/usr/include/x86_64-linux-gnu/c++/11```
  (the last folder may not necessarily be '11')  
