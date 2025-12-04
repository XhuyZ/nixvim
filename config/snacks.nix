{
  pkgs,
  lib,
  config,
  ...
}:
{
  plugins.snacks = {
    enable = true;
    autoLoad = true;
    settings = {
      dashboard = {
        sections = [
          {
            header = ''
              "██╗  ██╗██╗  ██╗██╗   ██╗██╗   ██╗███████╗"
              "╚██╗██╔╝██║  ██║██║   ██║╚██╗ ██╔╝╚══███╔╝"
              " ╚███╔╝ ███████║██║   ██║ ╚████╔╝   ███╔╝ "
              " ██╔██╗ ██╔══██║██║   ██║  ╚██╔╝   ███╔╝  "
              "██╔╝ ██╗██║  ██║╚██████╔╝   ██║   ███████╗"
              "╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚══════╝"
            '';
          }
          {
            icon = " ";
            title = "Keymaps";
            section = "keys";
            gap = 1;
            padding = 1;
          }
          {
            icon = " ";
            title = "Find Files";
            __unkeyed-1.__raw = "require('snacks').dashboard.sections.recent_files({cwd = true})";
            gap = 1;
            padding = 1;
          }
          {
            icon = " ";
            title = "Projects";
            section = "projects";
            gap = 1;
            padding = 1;
          }
          {
            pane = 1;
            icon = " ";
            desc = "Browse Repo";
            padding = 1;
            key = "b";
            action.__raw = ''
              function()
                Snacks.gitbrowse()
              end'';
          }
          (lib.mkIf config.plugins.lazy.enable { section = "startup"; })
        ];
      };
    };
  };
  keymaps = [
    {
      key = "<leader>e";
      mode = [ "n" ];
      action = "<cmd>lua Snacks.explorer()<CR>";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      key = "<leader>?";
      mode = [ "n" ];
      action = "<cmd>lua Snacks.picker.grep()<CR>";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      key = "<leader>n";
      mode = [ "n" ];
      action = "<cmd>lua Snacks.picker.notifications()<CR>";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      key = "<leader>fb";
      mode = [ "n" ];
      action = "<cmd>lua Snacks.picker.buffers()<CR>";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      key = "<leader>ff";
      mode = [ "n" ];
      action = "<cmd>lua Snacks.picker.files()<CR>";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      key = "<leader>gl";
      mode = [ "n" ];
      action = "<cmd>lua Snacks.picker.git_log()<CR>";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      key = "<leader>gb";
      mode = [ "n" ];
      action = "<cmd>lua Snacks.picker.git_branches()<CR>";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      key = "<leader>gB";
      mode = [ "n" ];
      action = "<cmd>lua Snacks.picker.gitbrowse()<CR>";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      key = "<leader>gs";
      mode = [ "n" ];
      action = "<cmd>lua Snacks.picker.git_status()<CR>";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      key = "<leader>uC";
      mode = [ "n" ];
      action = "<cmd>lua Snacks.picker.colorschemes()<CR>";
    }
    {
      key = "<leader>:";
      mode = [ "n" ];
      action = "<cmd>lua Snacks.picker.command_history()<CR>";
    }
    {
      # Goto Definition
      key = "gd";
      mode = [ "n" ];
      action = "<cmd>lua Snacks.picker.lsp_definitions()<CR>";
    }
    {
      # Goto Declaration
      key = "gD";
      mode = [ "n" ];
      action = "<cmd>lua Snacks.picker.lsp_declarations()<CR>";
    }
    {
      # References
      key = "gr";
      mode = [ "n" ];
      action = "<cmd>lua Snacks.picker.lsp_references()<CR>";
    }
    {
      # Goto Implementation
      key = "gI";
      mode = [ "n" ];
      action = "<cmd>lua Snacks.picker.lsp_implementations()<CR>";
    }
    {
      # Goto Type Definition (gy)
      key = "gy";
      mode = [ "n" ];
      action = "<cmd>lua Snacks.picker.lsp_type_definitions()<CR>";
    }

    # LSP Symbols
    {
      key = "<leader>ss";
      mode = [ "n" ];
      action = "<cmd>lua Snacks.picker.lsp_symbols()<CR>";
    }

    # LSP Workspace Symbols
    {
      key = "<leader>sS";
      mode = [ "n" ];
      action = "<cmd>lua Snacks.picker.lsp_workspace_symbols()<CR>";
    }
  ];
}
