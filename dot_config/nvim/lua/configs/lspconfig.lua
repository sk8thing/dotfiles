-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = {
	astro = {},
	bashls = {},
	clangd = {},
	cssls = {},
	eslint = {},
	gopls = {},
	html = {},
	htmx = {},
	pylsp = {},
	tailwindcss = {},
	templ = {},
	termux_language_server = {},
	terraformls = {},
	vtsls = {},
	yamlls = {},
}

for name, opts in pairs(servers) do
	vim.lsp.config(name, opts)
	vim.lsp.enable(name)
end
