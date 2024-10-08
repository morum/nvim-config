-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "go",
      "typescript",
      "tsx",
      "javascript",
      -- add more arguments for adding more treesitter parsers
    },
    highlight = {
      enabled = true,
    },
  },
}
