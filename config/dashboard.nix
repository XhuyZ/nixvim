{
  plugins.startup = {
    enable = true;
    settings = {
    colors = {
      background = "#ffffff";
      foldedSection = "#ffffff";
    };
    sections = {
      header = {
        type = "text";
        oldfilesDirectory = false;
        align = "center";
        foldSection = false;
        title = "Header";
        margin = 5;
        content = [
          "██╗  ██╗██╗  ██╗██╗   ██╗██╗   ██╗███████╗"
          "╚██╗██╔╝██║  ██║██║   ██║╚██╗ ██╔╝╚══███╔╝"
          " ╚███╔╝ ███████║██║   ██║ ╚████╔╝   ███╔╝ "
          " ██╔██╗ ██╔══██║██║   ██║  ╚██╔╝   ███╔╝  "
          "██╔╝ ██╗██║  ██║╚██████╔╝   ██║   ███████╗"
          "╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚══════╝"
        ];
        highlight = "Statement";
        defaultColor = "";
        oldfilesAmount = 0;
      };

      body = {
        type = "mapping";
        oldfilesDirectory = false;
        align = "center";
        foldSection = false;
        title = "Menu";
        margin = 5;
        content = [
          [
            "  Find File"
            "lua Snacks.picker.files()"
            "f"
          ]
          [
            "  New File"
            "ene | startinsert"
            "n"
          ]
          [
            "  File Text"
            "lua Snacks.dashboard.pick('live_grep')"
            "g"
          ]
          [
            "  Recent Files"
            "lua Snacks.dashboard.pick('oldfiles')"
            "r"
          ]
          [
            "  Config"
            "lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})"
            "c"
          ]
          [
            "  Session"
            "lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})"
            "s"
          ]
          [
            "  Git Browse"
            "lua Snacks.gitbrowse()"
            "b"
          ]
          [
            "  Quit"
            "qa"
            "b"
          ]
        ];
        highlight = "string";
        defaultColor = "";
        oldfilesAmount = 0;
      };
    };

    options = {
      paddings = [
        1
        3
      ];
    };

    parts = [
      "header"
      "body"
    ];
  };
  };
}
