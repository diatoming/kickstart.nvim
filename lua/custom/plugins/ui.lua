return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
    },
    opts = {
      presets = {
        lsp_doc_border = true,
      },
    },
  },
  -- floating filename
  {
    'b0o/incline.nvim',
    event = 'BufReadPre',
    priority = 1200,
    config = function()
      require('incline').setup {
        window = { margin = { vertical = 0, horizontal = 1 } },
        hide = {
          cursorline = true,
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ':t')
          if vim.bo[props.buf].modified then
            filename = '[+] ' .. filename
          end

          local icon, color = require('nvim-web-devicons').get_icon_color(filename)
          return { { icon, guifg = color }, { ' ' }, { filename } }
        end,
      }
    end,
  },
  {
    -- devicons
    'nvim-tree/nvim-web-devicons',
    lazy = true,
    config = function()
      require('nvim-web-devicons').setup {
        strict = true,
        override_by_extension = {
          astro = {
            icon = '',
            color = '#EF8547',
            name = 'astro',
          },
        },
      }
    end,
  },
}
