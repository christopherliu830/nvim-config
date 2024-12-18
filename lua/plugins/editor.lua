return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        cmd = "Neotree",
        keys = {
            {
                "<leader>fe",
                function()
                    require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
                end,
                desc = "Explorer NeoTree"
            },
            {
                "<leader>ge",
                function()
                    require("neo-tree.command").execute({ toggle = true, source = "git_status" })
                end,
                desc = "NeoTree Git"
            },
            {
                "<leader>be",
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
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
--             {
--                 "s1n7ax/nvim-window-picker",
--                 version = "2.*",
--                 opts = {
--                     filter_rules = {
--                         include_current_win = false,
--                         autoselect_one = true,
--                         bo = {
--                             filetype = { "neo-tree", "neo-tree-popup", "notify" },
--                             buftype = { "terminal", "quickfix" },
--                         }
--                     }
--                 }
--             }
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

