return {
  -- add colorscheme
  { "tanvirtin/monokai.nvim" },
  { "sainnhe/sonokai" },
  { "savq/melange-nvim" },
  -- Configure LazyVim to load the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "sonokai",
      colorscheme = "melange",
    },
  },
}
