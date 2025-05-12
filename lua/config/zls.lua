local map = vim.keymap.set

vim.lsp.config["zls"] = {
    cmd = { "zls" },
    filetypes = { "zig" },
    root_markers = { "build.zig" },
    settings = {
        zls = {
            enable_autofix = true
        }
    }
}

vim.lsp.enable("zls")

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*.zig",
    callback = function()
        map("n", "<F5>", function()
            Snacks.terminal.toggle("zig build", {
                 win = { position = "right" },
                 auto_insert = false,
                 start_insert = false,
            })
        end, { desc = "Last Tab" })
        map("n", "<C-Enter>", function()
            Snacks.terminal.toggle("zig build run", {
                interactive = true,
                auto_close = false,
            })
        end, { desc = "Last Tab" })
    end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = {"*.zig, *.zon"},
    callback = function(ev)
        vim.lsp.buf.format()
        vim.lsp.buf.code_action({
            context = { only = { "source.fixAll" }, diagnostics = {}},
            apply = true,
        })
    end
});

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = {"*.zig, *.zon"},
    callback = function(_)
        local project_dir = os.getenv("HY_PROJECT_DIR")
        local cwd = nil
        if (project_dir) then cwd = project_dir end
        local term, _ = Snacks.terminal.get("zig build", {
            cwd = cwd,
            win = { position = "right" },
            auto_insert = false,
            start_insert = false,
        })

        if term then term:destroy() end

        Snacks.terminal.toggle("zig build", {
            cwd = cwd,
            win = { position = "right" },
            auto_insert = false,
            start_insert = false,
        })
    end
});

