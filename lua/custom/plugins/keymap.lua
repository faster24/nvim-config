vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth  = 4
vim.opt.expandtab  = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.wrap = false

local keymap = vim.keymap.set

return {

keymap("n" , "<leader>pv" , vim.cmd.Ex);

-- global search and replace -- 
keymap("n", "<leader>gs", ":%s/\\<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>");

-- save 
keymap("n" , "<C-s>" , "<Cmd>w<CR>");

-- delete word backward 
keymap("n" , "dw" , "vb_d");

-- Select all
keymap("n" , "<C-a>", "gg<S-v>G");

}
