-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Exit insert mode
keymap.set("i", "jj", "<Esc>")

-- Override default behavior of x
keymap.set("n", "x", '"_x')

-- Append blank line above/below
keymap.set("n", "<A-o>", ":call append(line('.'), '')<CR>j", opts)
keymap.set("n", "<A-S-o>", ":call append(line('.') -1 , '')<CR>k", opts)

-- Delete contents of current line
keymap.set("n", "dc", ":normal! ^d$<CR>", opts)

-- Delete a word backward
keymap.set("n", "dw", "diwx")

-- Replace current word and proceed to the next match with '.'
keymap.set("n", "<S-r>", "*Ncgn")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Tab
keymap.set("n", "tt", ":tabedit<CR>", opts)
keymap.set("n", "<Tab>", ":tabnext<CR>", opts)
keymap.set("n", "<S-Tab>", ":tabprev<CR>", opts)
keymap.set("n", "<C-w>", ":tabclose<CR>", opts)

-- Split panel
keymap.set("n", "ss", ":split<CR>", opts)
keymap.set("n", "sv", ":vsplit<CR>", opts)
keymap.set("n", "sc", ":close<CR>", opts)

-- Move panel
keymap.set("n", "sh", ":wincmd H<CR>", opts)
keymap.set("n", "sj", ":wincmd J<CR>", opts)
keymap.set("n", "sk", ":wincmd K<CR>", opts)
keymap.set("n", "sl", ":wincmd L<CR>", opts)

-- Resize panel
keymap.set("n", "<C-S-h>", ":vertical resize -2<CR>", opts)
keymap.set("n", "<C-S-j>", ":resize +2<CR>", opts)
keymap.set("n", "<C-S-k>", ":resize -2<CR>", opts)
keymap.set("n", "<C-S-l>", ":vertical resize +2<CR>", opts)
