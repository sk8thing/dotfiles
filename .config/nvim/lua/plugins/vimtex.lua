---@type NvPluginSpec
return {
    "lervag/vimtex",
    lazy = false,
    init = function()
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_view_general_options = "--synctex-forward @line:@col:@tex @pdf"
        vim.g.vimtex_compiler_method = "latexmk"
        vim.g.vimtex_compiler_latexmk = {
            options = {
                "-xelatex",
                "-interaction=nonstopmode",
                "-synctex=1",
            },
        }
    end,
}
