require('base')
require('highlight')
require('maps')
require('plugins')

local has = function(x)
 return  vim.fn.has(x) == 1
end

local  is_mac = has "macunix"
local  is_win = has "win32"

if is_mac then
  require('macos')
end
if is_win then
  require('windows')
end

require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.lua_ls.setup{}
require('mason').setup{}
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}
require'lspconfig'.tsserver.setup{
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" }
}
