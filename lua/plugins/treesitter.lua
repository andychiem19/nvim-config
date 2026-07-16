return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local ts = require("nvim-treesitter")

    local languages = {
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "c",
      "cpp",
    }

    ts.setup({})
    ts.install(languages):wait(300000)

    vim.api.nvim_create_autocmd("FileType", {
      pattern = languages,
      callback = function()
        vim.treesitter.start()
        vim.wo.foldmethod = "expr"
        vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        vim.wo.foldlevel = 99
        vim.bo.indentexpr = "v:lua.require('nvim-treesitter').indentexpr()"
      end,
    })
  end,
}
