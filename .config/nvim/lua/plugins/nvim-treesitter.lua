---@type NvPluginSpec
return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        highlight = {
            enable = true,
            use_languagetree = true,
        },
        indent = {
            enable = true,
        },
        ensure_installed = {
            "c",
            "cpp",
            "go",
            "html",
            "javascript",
            "lua",
            "python",
            "query",
            "rust",
            "toml",
            "tsx",
            "typescript",
            "vim",
            "vimdoc",
            "xml",
            "yaml",
        },
    },
}
