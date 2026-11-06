---@type NvPluginSpec
return {
    "yioneko/nvim-vtsls",
    event = { "BufReadPre", "BufNewFile" },
    ft = {
        "typescript",
        "typescriptreact",
    },
}
