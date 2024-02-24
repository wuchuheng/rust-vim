return {
  {
    "wuchuheng/auto-fix-rust.nvim",
    event = "BufRead", -- Load on buffer read
    opts = function(_, opts)
      require("auto-fix-rust").setup()
    end
  }
}
