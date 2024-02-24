return {
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    opts = function(_, opts)
      -- place this in one of your configuration file(s)
      require('hop').setup()
      local hop = require('hop')
      local directions = require('hop.hint').HintDirection
      vim.keymap.set('', 'f', function()
        hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false })
      end, { remap = true })
      vim.keymap.set('', 'F', function()
        hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = false })
      end, { remap = true })

      return opts
    end
  },
}
