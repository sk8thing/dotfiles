require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up(N)" })
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down(N)" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move line up(V)" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move line down(V)" })
map("v", "<leader>cp", '"+y', { desc = "Copy selection to clipboard" })
map("i", "<C-p>", function()
  require("llm.completion").complete()
end, { desc = "Accept LLM completion", noremap = true, silent = true })
map("v", ">", ">gv", { desc = "Indent visual selection" })
map("v", "<", "<gv", { desc = "Unindent visual selection" })
map("n", "K", function()
    require("pretty_hover").hover()
end, { noremap = true, silent = true })
map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "Code action" })
map("n", "<leader>sh", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { desc = "Signature help" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
