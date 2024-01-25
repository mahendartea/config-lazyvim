return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "folke/tokyonight.nvim" },
  { "projekt0n/github-nvim-theme" },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
