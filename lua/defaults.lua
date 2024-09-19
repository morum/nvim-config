-- vim.opt.smartindent = true
vim.o.expandtab = false -- Use tabs instead of spaces
vim.o.tabstop = 2 -- Number of visual spaces per tab
vim.o.shiftwidth = 2 -- Number of spaces to use for autoindent
vim.o.softtabstop = 2 -- Number of spaces that a <Tab> counts for while editing
vim.opt.textwidth = 80
vim.opt.tw = 80

vim.g.sleuth_automatic = 0

-- Remap <C-u> to scroll up and center the screen
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
-- Remap <C-d> to scroll down and center the screen
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })

-- Enable cursor line
vim.opt.cursorline = true
-- Set custom highlight for CursorLine
vim.api.nvim_set_hl(0, "CursorLine", { ctermbg = 0, bg = "#222222" })
