return {
  'saghen/blink.cmp',
  version = '1.*',
  opts = {
    keymap = { preset = 'super-tab' },
    sources = {
      default = function()
        local row, col = unpack(vim.api.nvim_win_get_cursor(0))
        local ok, node = pcall(vim.treesitter.get_node, { pos = { row - 1, math.max(0, col - 1) } })
        if ok and node and vim.tbl_contains(
          { 'comment', 'line_comment', 'block_comment', 'comment_content' },
          node:type()
        ) then
          return {} -- or 'buffer'
        end
        return { 'lsp', 'path', 'snippets', 'buffer' }
      end,
    },
  },
}
