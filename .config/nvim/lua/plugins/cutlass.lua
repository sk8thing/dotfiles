---@type NvPluginSpec
return {
    "gbprod/cutlass.nvim",
    lazy = false,
    opts = {
        cut_key = "x",
        override_del = nil,
        exclude = {},
        registers = {
            select = "_",
            delete = "_",
            change = "_",
        },
    },
}
