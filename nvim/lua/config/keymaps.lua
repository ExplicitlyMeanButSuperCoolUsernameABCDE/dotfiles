-- ~/.config/nvim/lua/config/keybinds.lua

-- Create a local table to hold all keybindings
local keybinds = {}

-- Shorten function name for easier reference
local map = vim.keymap.set

-- Set the default options for keybindings
local opts = { noremap = true, silent = true }

-- Insert empty line
map("n", "[<Space>", "O<Esc>", { desc = "Insert blank line above" })
map("n", "]<Space>", "o<Esc>", { desc = "Insert blank line below" })

map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "J", ":m '>+1<CR>gv=gv")

-- Move lines of code up and down using Option + Up/Down
map("n", "<A-Up>", ":m .-2<CR>==", opts)
map("n", "<A-Down>", ":m .+1<CR>==", opts)

-- Window Splitting
-- Split window vertically
map("n", "<Leader>sv", ":vsplit<CR>", opts)
-- Split window horizontally
map("n", "<Leader>sh", ":split<CR>", opts)

-- Resize window vertically (increase height)
map("n", "<Leader><Up>", ":resize +8<CR>", opts)
-- Resize window vertically (decrease height)
map("n", "<Leader><Down>", ":resize -8<CR>", opts)
-- Resize window horizontally (increase width)
map("n", "<Leader><Left>", ":vertical resize -4<CR>", opts)
map("n", "<Leader><Right>", ":vertical resize +4<CR>", opts)

-- Move around splits using Ctrl + {h,j,k,l}
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Reload configuration without restart nvim
map("n", "<leader>r", ":so %<CR>")

-- Close all windows and exit from Neovim with <leader> and q
map("n", "<leader>q", ":qa!<CR>")

-- NvimTree
map("n", "<C-n>", ":NvimTreeToggle<CR>") -- open/close

map("v", "<", "<gv")
map("v", ">", ">gv")

-- Return the keybinds table with the setup function
return keybinds
