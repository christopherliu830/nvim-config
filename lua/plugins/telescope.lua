return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        {
            "<leader>ff",
            function()
                require("telescope.builtin").git_files()
            end,
            desc = "Telescope find files"
        },
        {
            "<leader>fg",
            function()
                require("telescope.builtin").live_grep()
            end,
            desc = "Telescope live grep"
        },
        {
            "<leader>fb",
            function()
                require("telescope.builtin").buffers()
            end,
            desc = "Telescope buffers"
        },
        {
            "<leader>fh",
            function()
                require("telescope.builtin").help_tags()
            end,
            desc = "Telescope help tags"
        },
    },
    opts = {
        defaults = {
            mappings = {
                n = {
                    ["q"] = function() require("telescope.actions").close() end,
                }
            },
        }
    }
}
