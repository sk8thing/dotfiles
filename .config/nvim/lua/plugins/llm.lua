---@type NvPluginSpec
return {
    "huggingface/llm.nvim",
    lazy = false,
    opts = {
        lsp = {
            bin_path = vim.api.nvim_call_function("stdpath", { "data" }) .. "/mason/bin/llm-ls",
            cmd_env = { LLM_LOG_LEVEL = "DEBUG" },
        },
        backend = "openai",
        model = "unsloth/Qwen2.5-Coder-3B-Instruct-GGUF:Q4_K_M",
        url = "http://localhost:8080", -- llm-ls uses "/v1/completions"
        enable_suggestions_on_startup = false,
        accept_keymap = "<C-p>",
        debounce_ms = 300,
        request_body = {
            temperature = 0.2,
            top_p = 0.95,
            max_tokens = 4096,
        },
        tokens_to_clear = { "<|endoftext|>" },
        fim = {
            enabled = true,
            prefix = "<|fim_prefix|>",
            middle = "<|fim_middle|>",
            suffix = "<|fim_suffix|>",
        },
    },
}
