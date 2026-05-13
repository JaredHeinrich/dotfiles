vim.g.mapleader = " "
vim.keymap.set("i", "<C-l>", "<Esc>", {desc = "Exit Insert Mode"})
vim.keymap.set("v", "<C-l>", "<Esc>", {desc = "Exit Insert Mode"})
vim.keymap.set("n", "td", ":bdelete<enter>", {desc = "[D]elete current Buffer"})
vim.keymap.set("n", "tj", ":bnext<enter>", {desc = "Switch to next Buffer"})
vim.keymap.set("n", "tk", ":bprev<enter>", {desc = "Switch to previous Buffer"})
vim.keymap.set('n', 'E', vim.diagnostic.open_float, {desc = "Open Diagnostic in Float"})
vim.keymap.set('n', '<leader>c', ':nohlsearch<CR>', {
    desc = "[C]lear [S]earch Highlights",
    silent = true
})

vim.keymap.set("n", "<C-Up>",    "<cmd>resize +2<CR>",          { desc = "Increase height" })
vim.keymap.set("n", "<C-Down>",  "<cmd>resize -2<CR>",          { desc = "Decrease height" })
vim.keymap.set("n", "<C-Left>",  "<cmd>vertical resize -2<CR>", { desc = "Decrease width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase width" })

vim.keymap.set("n", "º", ":m .+1<CR>==", { desc = "Move line down" }) -- alt-j
vim.keymap.set("n", "∆", ":m .-2<CR>==", { desc = "Move line up" }) -- alt-k
vim.keymap.set("v", "º", ":m '>+1<CR>gv=gv", { desc = "Move selection down" }) -- alt-j
vim.keymap.set("v", "∆", ":m '<-2<CR>gv=gv", { desc = "Move selection up" }) -- alt-k

vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

vim.keymap.set("n", "n", "nzz", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzz", { desc = "Previous search result (centered)" })

vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Split window horizontally" })

-- Completion done by blink
-- vim.keymap.set("c", "<C-j>", "<C-n>", {desc = "Commands select next"})
-- vim.keymap.set("c", "<C-k>", "<C-p>", {desc = "Commands select previous"})

-- Deactive Tab-Completion for command mode
vim.keymap.set("c", "<Tab>", "<Nop>")
vim.keymap.set("c", "<S-Tab>", "<Nop>")
