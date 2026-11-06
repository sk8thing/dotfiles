---@type NvPluginSpec
return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    event = { "BufReadPre leetcode.nvim", "BufNewFile leetcode.nvim" },
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        lang = "go",
    },
}
