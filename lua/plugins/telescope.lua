return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        {
            "<leader>ff",
            require("telescope.builtin").git_files,
            desc = "Telescope find files"
        },
        {
            "<leader>fg",
            require("telescope.builtin").live_grep,
            desc = "Telescope live grep"
        },
        {
            "<leader>fb",
            require("telescope.builtin").buffers,
            desc = "Telescope buffers"
        },
        {
            "<leader>fh",
            require("telescope.builtin").help_tags,
            desc = "Telescope help tags"
        },
    },
    opts = {
        defaults = {
            mappings = {
                n = {
                    ["q"] = require("telescope.actions").close,
                }
            },
        }
    }
}
