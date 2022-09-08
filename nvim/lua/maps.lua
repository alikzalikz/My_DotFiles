local keymap = vim.keymap
-- DO not yunk with x
keymap.set('n', 'x' , '"_x')

-- Increment/decrement
keymap.set('n' , '+' , '<C-a>')
keymap.set('n' , '-' , '<C-x>')

-- Delete a word backwards
keymap.set('n' , 'dw' , 'vb"_d')

-- Select all
keymap.set('n' , '<C-a>' , 'gg<S-v>G')

---- Tab & window
-- New tab
keymap.set('n' , 'te' , ':tabedit<Return>', { silent = true })
keymap.set('n' , 'tt' , ':tabn<Return>', {silent = true})
-- Split window
keymap.set('n' , 'hs' , 'split<Return><C-w>w', { silent = true })
keymap.set('n' , 'vs' , 'vsplit<Return><C-w>w', { silent = true })
keymap.set('n' , '<Space>' , '<C-w>w')
-- Move window
keymap.set('' , 's<left' , '<C-w>h')
keymap.set('' , 's<up>' , '<C-w>k')
keymap.set('' , 's<down>' , '<C-w>j')
keymap.set('' , 's<right>' , '<C-w>l')
keymap.set('' , 'sh' , '<C-w>h')
keymap.set('' , 'sk' , '<C-w>k')
keymap.set('' , 'sj' , '<C-w>j')
keymap.set('' , 'sl' , '<C-w>l')
-- Resize window
keymap.set('n' , '<C-w><left>' , '<C-w><')
keymap.set('n' , '<C-w><right>' , '<C-w>>')
keymap.set('n' , '<C-w><up>' , '<C-w>-')
keymap.set('n' , '<C-w><down>' , '<C-w>')

-- seva and exit
keymap.set('n' , 'ss' , ':w')
keymap.set('n' , 'SS' , ':wq')
keymap.set('n' , 'ee' , ':q')
keymap.set('n' , 'EE' , ':q!')

-- Other
keymap.set('n' , 'fi' , ':terminal')
keymap.set('n' , 'ex' , ':Explore')

