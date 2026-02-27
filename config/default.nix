{ pkgs, lib, ... }:
{
  imports = [
    # ./rustaceanvim.nix
    ./dbee.nix
    ./crates.nix
    ./keymaps.nix
    ./treesitter.nix
    ./toggleterm.nix
    ./themes.nix
    ./lazygit.nix
    ./bufferline.nix
    ./snacks.nix
    ./gitsigns.nix
    ./whichkey.nix
    ./hlchunk.nix
    ./yanky.nix
    ./autopairs.nix
    ./blink-cmp.nix
    ./tmux-navigator.nix
    ./smear-cursor.nix
    ./lsp/conform.nix
    ./lsp/fidget.nix
    ./lsp/lsp.nix
    ./nix-develop.nix
    ./aerial.nix
    ./autosave.nix
    ./notify.nix
    ./barbecue.nix
    ./noice.nix
    ./neoscroll.nix
    ./zen-mode.nix
    ./yazi.nix
    ./wtf.nix
    # ./windsurf-vim.nix if you want to use this plugin uncomment it and run nix develop --impure
    ./ts-comments.nix
    ./timerly.nix
    ./treesj.nix
    ./web-devicons.nix
    ./clipboard.nix
  ];

  config = {
    globals = {
      mapleader = " ";
    };

    opts = {
      number = true;
      colorcolumn = "80";
      relativenumber = true;
      shiftwidth = 2;
      tabstop = 2;
      wrap = false;
      swapfile = false; # Undotree
      backup = false; # Undotree
      undofile = true;
      hlsearch = false;
      incsearch = true;
      termguicolors = true;
      scrolloff = 8;
      signcolumn = "yes";
      updatetime = 50;
      foldlevelstart = 99;
    };
    extraPackages = with pkgs; [
      # base
      nerd-fonts.jetbrains-mono # Font
      fzf
      ripgrep
      fd
      # Formatters
      stylua # Lua formatter
      csharpier # C# formatter
      nixfmt-rfc-style # Nix formatter
      # Linters
      golangci-lint # Go linter
      shellcheck # Shell script linter
      eslint_d # JavaScript/TypeScript linter
      # Debuggers
      netcoredbg # C# debugger
      asm-lsp # Assembly LSP
      delve # Go debugger
      gcc

    ];
  };
}
