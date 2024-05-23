return {
    "ms-jpq/coq_nvim",
    branch = "coq",
    dependnecies = {
        { "ms-jpq/coq.artifacts", branch = "artifacts" },
    },
    config = function()
        local lsp = require("lspconfig")
        local coq = require("coq")

        lsp.tsserver.setup({})
        lsp.tsserver.setup(coq.lsp_ensure_capabilities({}))
        vim.cmd("COQnow -s")
    end,
}
