return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        cmd = "Neotree",
        keys = {
            {
                "<leader>ee",
                function()
                    require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
                end,
                desc = "Explorer NeoTree"
            },
            {
                "<leader>eg",
                function()
                    require("neo-tree.command").execute({ toggle = true, source = "git_status" })
                end,
                desc = "NeoTree Git"
            },
            {
                "<leader>eb",
                function()
                    require("neo-tree.command").execute({ toggle = true, source = "buffers" })
                end,
                desc = "NeoTree Buffers"
            },
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        opts = {
            sources = { "filesystem", "buffers", "git_status" },
            open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
            close_if_last_window = true,
            popup_border_style = "rounded",
            enable_git_status = true,
            enable_diagnostics = true,
            sort_case_insensitive = false,
            sort_function = nil,
            default_component_configs = {
                container = {
                    enable_character_fade = true
                },
                indent = {
                    highlight = "NeoTreeIndentMarker",
                    with_expanders = true,
                    expander_collapsed = "",
                    expanded_expanded = "",
                    expander_highlight = "NeoTreeExpander",
                },
            },
        },
    }
}

