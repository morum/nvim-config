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
      "python",
      "rust",
      "kotlin",
      "java",
      "yaml",
      "json",
      "xml",
      "html",
      -- add more arguments for adding more treesitter parsers
    },
    highlight = {
      enabled = true,
    },
  },
}
