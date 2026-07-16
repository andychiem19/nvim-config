return {
  'saghen/blink.cmp',
  version = '1.*',
  opts = {
    keymap = { preset = 'super-tab' }, -- Tab to select/confirm, like VSCode
    sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },
  },
}
