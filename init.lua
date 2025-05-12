-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.ic = true
vim.opt.termguicolors = true
vim.opt.hlsearch = false
vim.opt.rnu = true

-- Set title to name of buffer
vim.api.nvim_create_autocmd("VimEnter", {
    command = "set title"
})

vim.api.nvim_create_autocmd("VimEnter", {
    command = "colorscheme kanagawa-dragon",
})

vim.g.zig_fmt_autosave = 0

if vim.g.neovide then
    vim.o.guifont = "GeistMono Nerd Font Mono:12"
end



vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    float = { border = "rounded" },
    update_in_insert = true,
})

require("config.keymaps")
require("config.zls")
require("config.luals")
