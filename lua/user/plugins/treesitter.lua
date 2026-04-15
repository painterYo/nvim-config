local status_ok, treesitter = pcall(require, "nvim-treesitter")
if not status_ok then
    vim.notify("Error: nvim-treesitter not loaded.")
    return
end

treesitter.setup {
    install_dir = vim.fn.stdpath('data') .. '/site'
}

treesitter.install({ "c", "lua", "vim", "vimdoc", "query", "python", "bash", "html", "javascript", "java", "html", "markdown", "css", "cpp", "json" })

vim.api.nvim_create_autocmd('FileType', {
    callback = function()
        pcall(vim.treesitter.start)
    end,
})
