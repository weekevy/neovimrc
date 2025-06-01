
return {
  "tpope/vim-fugitive",
  cmd = { "Git", "G", "Gdiffsplit", "Gread", "Gwrite" },
  config = function()
    local map = vim.keymap.set
    local opts = { noremap = true, silent = true }

    map("n", "<leader>gs", "<cmd>Git<CR>", { desc = "Git status" })

    map("n", "<leader>gc", function()
      vim.ui.input({ prompt = "Commit message: " }, function(msg)
        if msg and #msg > 0 then
          vim.cmd("Git commit -m '" .. msg:gsub("'", [["]]) .. "'")
        else
          vim.notify("Commit canceled (empty message)", vim.log.levels.WARN)
        end
      end)
    end, { desc = "Git commit with message", noremap = true, silent = true })
    map("n", "<leader>gp", "<cmd>Git push<CR>", { desc = "Git push" })
    map("n", "<leader>gP", "<cmd>Git pull<CR>", { desc = "Git pull" })
    map("n", "<leader>gd", "<cmd>Gdiffsplit<CR>", { desc = "Git diff split" })
    map("n", "<leader>gb", "<cmd>Git blame<CR>", { desc = "Git blame" })
  end,
}

