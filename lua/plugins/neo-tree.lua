return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      -- used to open file tree on launch
      hijack_netrw_behavior = "disabled",
      window = {
        mappings = {
          -- disable slow fuzzy finder
          ["/"] = "noop",
        },
      },
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
  },
}
