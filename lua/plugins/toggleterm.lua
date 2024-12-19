local lazygit = nil
return {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
        {
            [[<leader>tt]],
            function()
                vim.cmd [[execute v:count1 . "ToggleTerm direction=float"]]
            end,
            desc = "Toggle floating terminal"
        },
        {
            "<leader>tn",
            function()
                vim.cmd [[execute v:count1 . "ToggleTerm direction=horizontal"]]
            end,
            desc = "Open a new terminal window"
        },
        {
            [[<leader>ta]],
            function()
                vim.cmd [[ToggleTermToggleAll]]
            end,
            desc = "Toggle all terminal"
        },
        {
            [[<leader>tg]],
            function()
                lazygit:toggle()
            end,
            desc = "Open lazygit"
        }
    },
    opts = {
        open_mapping = [[<c-\>]],
        shell = [["C:\Program Files\Git\bin\bash.exe"]],
        direction = "float",
    },
    config = function(lazy, opts) 
        require("toggleterm").setup(opts)
        lazygit = require("toggleterm.terminal").Terminal:new({
            cmd = "lazygit",
            count = 5,
            float_opts = {
                border = "double"
            },
            on_open = function(term)
                vim.cmd("startinsert!")
                vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
            end,
        })
    end
}
