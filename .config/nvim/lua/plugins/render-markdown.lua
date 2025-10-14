---@type NvPluginSpec
return {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-mini/mini.nvim",
    },
    event = { "BufReadPre", "BufNewFile" },
    ft = {
        "markdown",
    },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
}
