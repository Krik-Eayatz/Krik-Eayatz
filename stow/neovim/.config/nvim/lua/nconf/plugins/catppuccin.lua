-- (~/.config/nvim/lua/nconf/plugins/catppuccin.lua)

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- load before other plugins so highlights apply correctly
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}