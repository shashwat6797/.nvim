local status, nvim_lsp = pcall(require,'lspconfig')
if(not status) then
  return
end

local protocol = require('vim.lsp.protocol')

local on_attach = function (client, bufnr)
  --formatting
  if client.server_capabilities.documnetFormattingProvider then
    vim.api.nvim_create_augroup("BufWritePre", {
      group = vim.api.nvim_create_augroup("Format", {clear = true}),
      buffer = bufnr,
      callback = function()vim.lsp.buf.formatting_seq_sync()
      end
    }) 
  end
  
end

