require('base')
require('highlights')
require('maps')
require('plugins')
--local plugins = require('plugins')
local Plug = vim.fn['plug#']

--local has = function(x)
--  return vim .fn.has(x) == 1
--end
--
--local is_mac = has "macunix"
--local is_win = has "win32"
--local is_linux = has "arch"
--
--if is_mac then
--  require('macos')
--end
--
--if is_win then
--  require('windows')
--end
--
--if is_linux then
--  require('arch')
--end
--**************************************--
vim.call('plug#begin', '~/.config/nvim/plugins')

Plug ('scrooloose/nerdtree')
Plug ('OmniSharp/omnisharp-vim')
--Plug ('neoclide/coc.nvim')
Plug ('kevinoid/vim-jsonc')
--  vim.call('let g:OmniSharp_server_stdio = 1')
Plug ('dense-analysis/ale')

vim.call('plug#end')
--**************************************--
