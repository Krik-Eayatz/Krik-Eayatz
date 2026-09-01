-- (~/.config/nvim/lua/nconf/plugins/nvim-tree.lua)

return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional, for file icons
  },
  config = function()
    -- nvim-tree recommends disabling netrw (the builtin file explorer)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({
      view = {
        width = 30,
        side = "right",
      },
    })

    -- keymap to toggle the tree
    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file tree" })
    vim.keymap.set("n", "<leader>o", "<cmd>NvimTreeFocus<CR>", { desc = "Focus file tree" })
  end,
}
