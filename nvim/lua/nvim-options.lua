	vim.cmd("set expandtab")
	vim.cmd("set number")
	vim.cmd("set mouse=a")
	vim.cmd("set relativenumber")
	vim.cmd("set autoindent")
	vim.cmd("set tabstop=4")
	vim.cmd("set shiftwidth=4")
	vim.cmd("set expandtab")
	vim.cmd("set smartindent")
	vim.cmd("set syntax=on")

    vim.opt.swapfile = false


    -- Navigate Panes better
    vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
    vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
    vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
    vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

