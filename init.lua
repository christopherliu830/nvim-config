-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.shell = [["C:\Program Files\Git\bin\bash.exe"]]
vim.opt.shellcmdflag = "-c"
vim.opt.shellquote = '"'
vim.opt.shellxquote = ""
vim.opt.termguicolors = true

-- Open neotree
vim.api.nvim_create_autocmd("VimEnter", {
    command = "Neotree toggle",
})

-- Set title to name of buffer
vim.api.nvim_create_autocmd("VimEnter", {
    command = "set title"
})

vim.api.nvim_create_autocmd("VimEnter", {
    command = "colorscheme flexoki",
})

vim.g.zig_fmt_autosave = 0

require("config.keymaps")

