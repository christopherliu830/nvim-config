return {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
        {
            "<leader>tt",
            function()
            end,
            desc = "Toggle terminal"
        },
    },
    opts = {
        open_mapping = [[<leader>tt]],
        shell = [["C:\Program Files\Git\bin\bash.exe"]],
        direction = "float",
    }
}
