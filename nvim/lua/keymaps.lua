-- Alias
require('settings')
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

-- Bloquear las teclas up,down,left,right
map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})

-- Poder moverse en modo de insercion usando Ctrl+(hjkl)
map('i', '<C-h>', '<left>', default_opts)
map('i', '<C-j>', '<down>', default_opts)
map('i', '<C-k>', '<up>', default_opts)
map('i', '<C-l>', '<right>', default_opts)

--Leader + w
map('', '<leader>w', ':w<CR>',{noremap = true})

--Neotree
map('', '<leader><tab>', ':NERDTreeToggle<CR>',{noremap = true})

--Airlane pestañas
--Moverse al buffer siguiente
map('n', '<leader>k', ':bn<CR>', {noremap = true})
--Moverse al buffer anterior
map('n', '<leader>j', ':bp<CR>', {noremap = true})
--Cerrar el bufer actual
map('n', '<leader>q', ':bdelete<CR>', {noremap = true})
--Crear nueva ventana
map('n', '<leader>t', ':tabe<CR>', {noremap = true})
