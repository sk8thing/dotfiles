---@type NvPluginSpec
return {
    "pmizio/typescript-tools.nvim",
    event = "LspAttach",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "neovim/nvim-lspconfig"
    },
    opts = {}
}
