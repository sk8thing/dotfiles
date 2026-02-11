---@type NvPluginSpec
return {
    "huggingface/llm.nvim",
    event = "LspAttach",
    opts = {
        lsp = {
            bin_path = vim.api.nvim_call_function("stdpath", { "data" }) .. "/mason/bin/llm-ls",
            cmd_env = { LLM_LOG_LEVEL = "DEBUG" },
        },
        backend = "ollama",
        model = "qwen2.5-coder:3b-base",
        url = "http://localhost:11434",
        fim = {
            enabled = false,
            prefix = "<｜fim▁prefix｜>",
            middle = "<｜fim▁middle｜>",
            suffix = "<｜fim▁suffix｜>",
        },
        accept_keymap = "<C-p>",
        context_window = 4096,
        request_body = {
            options = {
                temperature = 0.2,
                top_p = 0.95,
            },
        },
    },
}
