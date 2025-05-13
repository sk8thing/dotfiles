---@type NvPluginSpec
return {
  "nvim-telescope/telescope.nvim",
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      pickers = {
        live_grep = {
          file_ignore_patterns = { "node_modules", ".git", ".venv" },
          additional_args = function(_)
            return { "--hidden" }
          end
        }
      }
    })
  end
}
