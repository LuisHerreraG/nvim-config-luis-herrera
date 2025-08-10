vim.lsp.config('*', {
  on_attach = function(client, bufnr)
    vim.api.nvim_set_option_value('omnifunc', 'v:lua.vim.lsp.omnifunc', {buf = bufnr})
    vim.api.nvim_set_option_value('tagfunc', 'v:lua.vim.lsp.tagfunc', {buf = bufnr})

    vim.keymap.set({'n', 'v'}, 'K', vim.lsp.buf.hover, { buffer = bufnr })
    vim.keymap.set({'n', 'v'}, '<F4>', vim.lsp.buf.format, { buffer = bufnr })
    vim.keymap.set('n', 'gr', vim.lsp.buf.rename, { buffer = bufnr })
    vim.keymap.set('n', 'grr', vim.lsp.buf.references, { buffer = bufnr })

    vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        signs = true, underline = true, virtual_text = true
      }
    )
  end
})

-- Restart all active LSP clients for the current buffer
vim.api.nvim_create_user_command("LspRestart", function()
  vim.lsp.stop_client(vim.lsp.get_clients())
end, {})


vim.lsp.enable('luals')
vim.lsp.enable('pyright')

