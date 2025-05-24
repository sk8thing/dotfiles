---@type NvPluginSpec
return {
  "stevearc/conform.nvim",
  event = 'BufWritePre',
  opts = require "configs.conform",
}
