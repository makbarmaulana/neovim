return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "selene",
      "stylua",
      "luacheck",
      "shellcheck",
      "shfmt",
      "typescript-language-server",
      "tailwindcss-language-server",
      "html-lsp",
      "css-lsp",
      "cspell",
      "actionlint",
    })
  end,
}
