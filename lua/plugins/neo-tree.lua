-- Customize neo-tree

---@type LazySpec
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    sources = {
      'filesystem',
      'buffers',
      'git_status',
    },
    filesystem = {
      window = {
        position = 'right',
        width = 50, -- Adjust the width as needed
      },
    },
    buffers = {
      window = {
        position = 'right',
        width = 50,
      },
    },
    git_status = {
      window = {
        position = 'right',
        width = 50,
      },
    },
  },
}
