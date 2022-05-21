return function()
  local config = require("doom.core.config").config

  require("indent_blankline").setup({
    enabled = config.doom.show_indent,
    char = "",
    context_char = "│",
    -- If treesitter plugin is enabled then use its indentation
    use_treesitter = require("doom.utils").check_plugin("nvim-treesitter", "opt"),
    show_first_indent_level = false,
    show_current_context = true,
    show_current_context_start = true,
    filetype_exclude = { "help", "dashboard", "packer", "norg", "DoomInfo" },
    buftype_exclude = { "terminal" },
  })
end
