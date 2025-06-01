-- Bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- This has to be set before initializing lazy
vim.g.mapleader = " "
require("lazy").setup("plugins", {
   change_detection = {
    enabled = true, -- automatically check for config file changes and reload the ui
    notify = false, -- turn off notifications whenever plugin changes are made
  },
})


vim.api.nvim_create_user_command("Run", function()
  local ft = vim.bo.filetype
  local file = vim.fn.expand("%")
  local cmd = ""

  if ft == "python" then
    cmd = "python3 " .. file
  elseif ft == "javascript" then
    cmd = "node " .. file
  elseif ft == "typescript" then
    cmd = "ts-node " .. file
  elseif ft == "lua" then
    cmd = "lua " .. file
  elseif ft == "sh" then
    cmd = "bash " .. file
  elseif ft == "ruby" then
    cmd = "ruby " .. file
  else
    print("No run command defined for filetype: " .. ft)
    return
  end

  vim.cmd("!" .. cmd)
end, {})


-- These modules are not loaded by lazy
require("core.options")
require("core.keymaps")
