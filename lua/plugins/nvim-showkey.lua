
return {
  {
    "NStefan002/screenkey.nvim",
    lazy = false,
    version = "*",
    config = function()
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          require("screenkey").setup({
            win_opts = {
              relative = "editor",
              anchor = "SE",
              width = 10,
              height = 1,
              row = vim.o.lines - 30,
              col = vim.o.columns - 4,
              border = "single",
              style = "minimal",
            },
          })
          require("screenkey").toggle(true)
        end,
      })
    end,
  },
}

