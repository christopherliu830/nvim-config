return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    dependencies = {
        "echasnovski/mini.icons",
    },
    ---@type snacks.Config
    opts = {
        dashboard = { enabled = true },
        notifier = { enabled = true },
        explorer = { enabled = true },
        statuscolumn = { enabled = true },
        scroll = {
            animate = {
                duration = { step = 2 },
            },
        },
    },
    keys = {
        { "<leader>n", function() Snacks.notifier.show_history() end, desc = "Notification Historyh" },
        { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
        { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
        { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
        { "<leader>fg", function() Snacks.picker.git_files() end, desc = "Find Git Files" },
        { "<leader>fd", function() Snacks.picker.diagnostics() end, desc = "Find Diagnostics" },
        { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
        { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
        { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
        { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
        { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
        { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
        { "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },
        { "<leader>bd", function() Snacks.bufdelete() end, desc = "Delete Buffer" },
    },

}
