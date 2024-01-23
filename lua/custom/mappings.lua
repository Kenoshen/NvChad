local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require("dap.ui.widgets");
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar",
    },
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function ()
        require("dap-go").debug_test()
      end,
      "Debug go test",
    },
    ["<leader>dgl"] = {
      function ()
        require("dap-go").debug_last()
      end,
      "Debug last go test",
    },
  },
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags",
    },
  },
}

M.arsync = {
  n = {
    ["<leader>sc"] = {
      "<cmd> ARshowConf <CR>",
      "Show arsync configuration",
    },
    ["<leader>su"] = {
      "<cmd> ARsyncUp <CR>",
      "Syncs files up to the remote",
    },
    ["<leader>sr"] = {
      "<cmd> ARsyncUpDelete <CR>",
      "Syncs files up to the remote and delete remote files not existing on local (be careful with that)",
    },
    ["<leader>sd"] = {
      "<cmd> ARsyncDown <CR>",
      "Syncs files down from the remote",
    },
  },
}

M.general = {
  n = {
    ["<leader>ww"] = {
      "<cmd> w <CR>",
      "Write buffer",
    },
    ["<leader>wq"] = {
      "<cmd> wq <CR>",
      "Write then quit buffer",
    },
    ["<leader>qq"] = {
      "<cmd> q <CR>",
      "Quit buffer",
    },
    ["<leader>qa"] = {
      "<cmd> qa <CR>",
      "Quit all buffers",
    },
    ["<leader>rr"] = {
      "oif err == nil {<CR>}<Esc>Oreturn err<Esc>",
      "Check for err equals nil",
    },
  },
}

return M
