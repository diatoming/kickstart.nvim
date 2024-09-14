return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        marksman = {
          filetypes = { 'markdown', 'mdx' },
        },
      },
    },
  },
}
