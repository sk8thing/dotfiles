require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<A-k>", ":m .-2<cr>==", { desc = "Move line up(N)" })
map("n", "<A-j>", ":m .+1<cr>==", { desc = "Move line down(N)" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move line up(V)" })
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move line down(V)" })
map("v", "<leader>cp", '"+y', { desc = "Copy selection to clipboard" })
map("i", "<C-p>", function()
    require("llm.completion").complete()
end, { desc = "Accept LLM completion", noremap = true, silent = true })
map("v", ">", ">gv", { desc = "Indent visual selection" })
map("v", "<", "<gv", { desc = "Unindent visual selection" })
map("n", "K", "<cmd>Lspsaga hover_doc<cr>", { desc = "Hover documentation", noremap = true, silent = true })
map("n", "<leader>ca", "<cmd>Lspsaga code_action<cr>", { desc = "Code action" })
map("n", "<leader>ra", "<cmd>Lspsaga rename<cr>", { desc = "LSP rename", noremap = true, silent = true })
map("n", "<leader>pd", "<cmd>Lspsaga peek_definition<cr>", { desc = "Peek definition" })
map("n", "<leader>pdt", "<cmd>Lspsaga peek_type_definition<cr>", { desc = "Peek type definition" })
map("n", "<leader>gd", "<cmd>Lspsaga goto_definition<cr>", { desc = "Go to definition" })
map("n", "<leader>gdt", "<cmd>Lspsaga goto_type_definition<cr>", { desc = "Go to type definition" })
map("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Lists all git branches" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
