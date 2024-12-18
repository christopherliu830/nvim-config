return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        notifier = { enabled = true },
        statuscolumn = { enabled = true },
    },
    keys = {
        { "<leader>n", function() Snacks.notifier.show_history() end, desc = "Notification Historyh" },
        { "<leader>st", function() Snacks.terminal() end, desc = "Toggle Terminal" },
    },
}
