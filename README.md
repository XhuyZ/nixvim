# ✨ Nixvim Flake Config - Inspired by LazyVim

This is a personal Neovim configuration written using **Nix Flakes** and powered by [nixvim](https://github.com/nix-community/nixvim). It is heavily inspired by [LazyVim](https://lazyvim.github.io/) and aims to provide a modern, modular, and reproducible setup for Neovim, leveraging the power of the Nix ecosystem.

![Preview Screenshot](/assets/pic8.png)

![Preview Screenshot](/assets/pic9.png)

![Preview Screenshot](/assets/pic11.png)

---

## 🚀 Installation

You can choose one of the following two methods to run this config:

### 🔁 Method 1: Clone and use `nix develop`

```bash
git clone https://github.com/XhuyZ/nixvim
cd nixvim
nix develop
```

### ⚡ Method 2: For NixOS users `nix profile install`

```bash
nix profile install github:XhuyZ/nixvim
```

Once inside the `nix develop` environment, just run:

```bash
nvim
```

---

## 🔌 Plugins & Keymaps

Here is a list of the main plugins included in this configuration along with their key mappings (if applicable):

### 📁 **Plugins Overview**

| Plugin Name                                                             | Purpose              | Keymap(s)-check `config/keymaps.nix` for details |
| ----------------------------------------------------------------------- | -------------------- | ------------------------------------------------ |
| [`snacks.picker`](https://github.com/folke/snacks.nvim)                 | File/symbol search   | `<leader>ff`, `<leader>fg`                       |
| [`snacks.explorer`](https://github.com/folke/snacks.nvim)               | File explorer        | `<leader>e`                                      |
| [`blink-cmp`](https://github.com/Saghen/blink.cmp)                      | Code completion      | `<Tab>`, `Enter`                                 |
| [`tmux-navigator`](https://github.com/christoomey/vim-tmux-navigator)   | Tab navigation       | `<C-h>`,`<C-j>`,`<C-k>`,`<C-l>`                  |
| [`dashboard.nvim`](https://github.com/nvimdev/dashboard-nvim)           | Dashboard            | `config/dashboard.nix`                           |
| [`autosave.nvim`](https://github.com/pocco81/auto-save.nvim)            | Save edit            | `<C-s>`                                          |
| [`bufferline.nvim`](https://github.com/akinsho/bufferline.nvim)         | Display buffer       | Same keymap as LazyVim                           |
| [`lualine.nvim`](https://github.com/nvim-lualine/lualine.nvim)          | Display lualine      | `config/lualine.nix`                             |
| [`treesitter.nvim`](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlight     | `config/treesitter.nix`                          |
| [`web-devicon.nvim`](https://github.com/nvim-tree/nvim-web-devicons)    | Display Icons        | `config/web-devicons.nix`                        |
| [`toggleterm.nvim`](https://github.com/akinsho/toggleterm.nvim)         | Float Terminal       | `<C-t>`                                          |
| [`catppuccin.nvim`](https://github.com/catppuccin/nvim)                 | Default colorschemes | `<leader>e`                                      |
| [`whichkey.nvim`](https://github.com/folke/which-key.nvim)              | Keymap helper        | `<leader>`                                       |
| [`yanky.nvim`](https://github.com/gbprod/yanky.nvim)                    | Better yanking       | `config/yanky.nix`                               |
| [`smear-cursor.nvim`](https://github.com/sphamba/smear-cursor.nvim)     | Cursor animations    | `config/smear-cursor.nix`                        |
| [`noice.nvim`](https://github.com/folke/snacks.nvim)                    | Notification         | `config/noice.nix`                               |
| [`neoscroll.nvim`](https://github.com/karb94/neoscroll.nvim)            | Better navigation    | `config/neoscroll.nix`                           |
| [`markview.nvim`](https://github.com/OXY2DEV/markview.nvim)             | Markdown view        | `config/markview.nix`                            |
| [`hlchunk.nvim`](https://github.com/shellRaining/hlchunk.nvim)          | Brackets view        | `config/hlchunk.nix`                             |
| [`lazygit.nvim`](https://github.com/kdheepak/lazygit.nvim)              | Lazygit              | `<leader>gg`                                     |
| [`gitsigns.nvim`](https://github.com/lewis6991/gitsigns.nvim)           | Git signs            | `config/gitsigns.nix`                            |
| [`barbecue.nvim`](https://github.com/utilyre/barbecue.nvim)             | Breadcrumb visualize | `config/barbecue.nix`                            |
| [`kulaka.nvim`](https://github.com/mistweaverco/kulala.nvim)            | Http Client          | `<leader>Rs`                                     |

---

## 📦 Flake Structure

<details>
<summary>Click to expand</summary>

```text
.
├── flake.nix
├── flake.lock
├── config/
│   ├── lsp/
│   ├── default.nix
│   ├── keymaps.nix
│   └── firstPlugin.nix
    ........
└── README.md
```

</details>

---

## 🧠 Notes

- The `default.nix` is the entry point of all plugins.
- Each plugin is a separeate `.nix` file,I'm lazy to organize it.
- Compatible with both Linux and WSL.
- Still waiting for the native lsp from nixvim to complete my setup

---

## 📫 Contact

If you find this configuration useful or would like to contribute, feel free to open an issue or submit a PR on the main repository:

👉 [github.com/XhuyZ/nixvim](https://github.com/XhuyZ/nixvim)

---
