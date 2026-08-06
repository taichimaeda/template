---@type LazySpec
return {
  "Isrothy/neominimap.nvim",
  version = "v3.x.x",
  lazy = false,
  keys = {
    { "<Leader>um", "<Cmd>Neominimap Toggle<CR>", desc = "Toggle minimap" },
  },
  init = function()
    vim.g.neominimap = {
      auto_enable = true,
      exclude_filetypes = { "help", "bigfile", "neo-tree", "snacks_dashboard" },
      layout = "float",
      float = {
        minimap_width = 20,
        window_border = "none",
      },
    }
  end,
}
