# ⚡️ Neovim Configuration

A minimal yet powerful Neovim setup tailored for performance, productivity, and modern development.

## ✨ Features

- 🚀 Fast startup optimized for big files
- 🎨 Clean and customizable color scheme
- 🧠 Git integration and inline blame
- 🔍 Fuzzy finding and navigation
- 🧩 LSP + Autocompletion
- 🤖 GitHub Copilot integration
- 🔧 Treesitter for better syntax highlighting
- 🔁 Surround and autopairs
- 💬 Commenting and REST API testing

## 🔌 Included Plugins

| Plugin File              | Description |
|--------------------------|-------------|
| `bigfile-nvim.lua`       | Optimize performance for large files |
| `colorscheme.lua`        | Set the color scheme and visual tweaks |
| `git-blame-nvim.lua`     | Show inline Git blame info |
| `harpoon.lua`            | Quick file navigation and bookmarking |
| `lualine-nvim.lua`       | Statusline using `lualine` |
| `nvim-autopairs.lua`     | Automatically close brackets and quotes |
| `nvim-cmp.lua`           | Autocompletion engine setup |
| `nvim-copilot.lua`       | GitHub Copilot integration |
| `nvim-fugitive.lua`      | Git support via `vim-fugitive` |
| `nvim-lspconfig.lua`     | Language Server Protocol configuration |
| `nvim-surround.lua`      | Surround text objects easily |
| `nvim-treesitter.lua`    | Treesitter syntax highlighting and parsing |
| `quickfixdd.lua`         | QuickFix list enhancement |
| `telescope-nvim.lua`     | Fuzzy finder using Telescope |
| `vim-commentary.lua`     | Easily comment/uncomment code |
| `vim-rest-console.lua`   | Execute HTTP requests directly from Neovim |

## 🛠 Installation

Clone the config into your `~/.config/nvim/lua/plugins/` directory or your plugin manager setup:

```bash
git clone https://github.com/your-username/your-repo-name ~/.config/nvim/lua/plugins/
