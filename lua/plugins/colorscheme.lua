
return {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000, -- Make sure it's loaded before other plugins
    config = function()
        require("rose-pine").setup({
            disable_background = true,
        })
        vim.cmd.colorscheme("rose-pine")
    end,
}

