-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.ui = {
    theme = "nvchad-matugen",
}

M.mason = {
    pkgs = {
        "bash-language-server",
        "clangd",
        "css-lsp",
        "eslint-lsp",
        "gopls",
        "html-lsp",
        "htmx-lsp",
        "llm-ls",
        "lua-language-server",
        "prettier",
        "prettierd",
        "python-lsp-server",
        "stylua",
        "tailwindcss-language-server",
        "templ",
        "vtsls",
        "yaml-language-server",
    },
}

return M
