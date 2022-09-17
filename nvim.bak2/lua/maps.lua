local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '=', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G') -- Normal mode
--keymap.set('i', '<C-a>', '<ESC>gg<S-v>G') -- Insert mode

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabnew<return>', { silent = true })
keymap.set('n', 'tt', ':tabn<Return>', { silent = true })

-- Split window
keymap.set('n', 'sp', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Save and Exit for normal mode
keymap.set('n', 'ee', ':q')
keymap.set('n', 'EE', ':q!')
keymap.set('n', 'ss', ':w')
keymap.set('n', 'SS', ':wq')

-- Save and Exit for insert mode
--keymap.set('i', '<C-e>', '<ESC>:q')
--keymap.set('i', '<C-E>', '<ESC>:q!')
--keymap.set('i', '<C-s', '<ESC>:w')
--keymap.set('n', '<C-S>', '<ESC>s:wq')

-- File tree
keymap.set("n", "ex", ":NvimTreeToggle<CR>", { silent = true })

-- Termninal
keymap.set("n", "fi", ":split<Return>:terminal<Return>i", { silent = true })
keymap.set("t", "<C-E>", "exit<Return>", { silent = true })

-- Run Dotnet app
keymap.set("n", "ru", ":split<Return>:terminal<Return>idotnet run Program.cs<Return>", { silent = true })

-- Format code
keymap.set("n", "<M-f>", ":lua vim.lsp.buf.format()<CR>", { silent = true })

-- To go to normal mode
--keymap.set("i", "II", "<ESC>")
