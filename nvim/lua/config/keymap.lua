vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("i", "{<CR>", "{<CR>t<Cr>}<esc>k$xa")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-'>", ":! ./build.sh<CR>")
vim.keymap.set("n", "<leader>r", ":! ./a.out<CR>")
