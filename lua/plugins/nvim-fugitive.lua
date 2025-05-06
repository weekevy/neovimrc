

return {
  "tpope/vim-fugitive",
    config = function()
        require("core.keymaps")
        -- Git status
        vim.keymap.set('n', '<Leader>he', ':Git<CR>', { desc = 'Git Status', noremap = true, silent = true })
        -- Git commit
        vim.keymap.set('n', '<Leader>hr', ':Gcommit<CR>', { desc = 'Git Commit', noremap = true, silent = true })
        -- Git diff
        vim.keymap.set('n', '<Leader>hd', ':Gdiffsplit<CR>', { desc = 'Git Diff', noremap = true, silent = true })
        -- Git blame
        vim.keymap.set('n', '<Leader>hb', ':Gblame<CR>', { desc = 'Git Blame', noremap = true, silent = true })
        -- Git log
        vim.keymap.set('n', '<Leader>hl', ':0Glog<CR>', { desc = 'Git Log', noremap = true, silent = true })
        -- Git push
        vim.keymap.set('n', '<Leader>hq', ':Gpush<CR>', { desc = 'Git Push', noremap = true, silent = true })
    end,
}
