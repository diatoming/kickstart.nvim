-- return {
--   "navarasu/onedark.nvim",
--   config = function()
--     require("onedark").setup({
--
--       style = "dark", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--       transparent = true,
--       -- Lualine options --
--       lualine = {
--         transparent = true, -- lualine center bar transparency
--       },
--     })
--     vim.cmd.colorscheme("onedark")
--   end,
-- }

-- return {
--   "olimorris/onedarkpro.nvim",
--   priority = 1000, -- Ensure it loads first
--   config = function()
--     require("onedarkpro").setup({
--       colors = {},
--       options = {
--         cursorline = true,
--         transparency = true,
--       },
--     })
--     vim.cmd("colorscheme onedark")
--   end,
-- }

return {
  "EdenEast/nightfox.nvim",
  priority = 1000,
  config = function()
    -- Default options
    require("nightfox").setup({
      options = {
        transparent = true, -- Disable setting background
        dim_inactive = true, -- Non focused panes set to alternative background
      },
    })

    -- setup must be called before loading
    vim.cmd("colorscheme nightfox")
  end,
}
