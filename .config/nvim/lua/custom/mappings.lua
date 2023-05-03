---@type MappingsTable
local M = {}

M.general = {
  -- mappings for normal mode
  n = {
    ["<leader>tt"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "Toggle Transparency",
    };
    ["x"] = {'"_x', "Delete char"};
    ["<C-a>"] = {"gg<S-v>G", "Select All"};
    ["dw"] = {"dvb", "Delete Word Backwards"};
    [";"] = { ":", "enter command mode", opts = { nowait = true }};
    ["<leader>ts"] = {"<CMD> :Telescope keymaps <CR>", "Telescope show keymaps"};
  },

  -- mappings for insert mode
  i = {
    ["<ESC>"] = {"<ESC>", "escape insert mode", opts = { nowait = true }};
    --copilot keybinds
    ["<A-C"] = {"<CMD>call copilot#Accept() <CR>", "Copilot accept"};
    ["<A-;>"] = {"<CMD>call copilot#Dismiss() <CR>", "Copilot cancel"};

    ["<A-/>"] = {"<CMD>call copilot#Suggest() <CR>", "Copilot suggest"};
    ["<A-[>"] = {"<CMD>call copilot#Previous() <CR>", "Copilot previous suggestion"};
    ["<A-]>"] = {"<CMD>call copilot#Next() <CR>", "Copilot next suggestion"};
  };

-- more keybinds!

};
return M
