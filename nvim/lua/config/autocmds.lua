-- deactivate highlighting from lsp
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client == nil then return end
        client.server_capabilities.semanticTokensProvider = nil
    end,
});
