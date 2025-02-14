local map = vim.keymap.set
vim.lsp.config["zls"] = {
    cmd = { "zls" },
    filetypes = { "zig" },
    root_markers = { "build.zig" },
    settings = {
    }
}

vim.lsp.enable("zls")

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*.zig",
    callback = function(args)
        local cwd = vim.fn.expand("%:p:h")
        map("n", "<F5>", function() 
            Snacks.terminal.toggle("zig build --watch", {
                 cwd = cwd,
                 win = { position = "right" },
                 auto_insert = false,
                 start_insert = false,
            })
        end, { desc = "Last Tab" })
    end,
})

