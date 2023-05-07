local M = {}

-- For a full list of options see :h lspconfig
-- Also see https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
M.treesitter = {
  ensure_installed = {
    -- defaults 
    "vim",
    "lua",

    -- web dev stuff 
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    -- "json",
    "svelte",
    "scss",
    "prisma",
    "graphql",
    -- "php",
    -- "ruby",

    -- backend stuff 
    -- "rust",
    -- "go",
    -- "java",
    -- "kotlin",
    "python",
    "sql",

    -- c/cpp stuff 
    "c",
    "cpp",
    "cmake",

    -- other stuff 
    -- "fish", -- only for macos
    -- "yaml",
    -- "dockerfile",
    -- "regex",
    -- "comment",
    -- "query",
    -- "toml",
    "markdown",
    -- "markdown_inline",
    "gitignore"
    -- "bash",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- LUA STUFF 
    "lua-language-server",
    "stylua",
    "vim-language-server",

    -- WEB DEV STUFF 
    "css-lsp",
    "cssmodules-language-server",
    "html-lsp",
    "typescript-language-server",
    "js-debug-adapter",
    "json-lsp",
    -- "deno",
    "prettierd",
    "eslint-lsp",
    "svelte-language-server",
    "tailwindcss-language-server",
    -- "stylelint",
    -- "stylelint_lsp",
    "prisma-language-server",
    -- PHP4
      -- "php-debug-adapter",
      -- "phpactor",
      -- "intelephense", -- Professional PHP tooling for any LSP 

    -- BACKEND STUFF
    "node-debug2-adapter",
    -- Python
      -- "pyright",
      -- "python-lsp-server",
      -- "isort", -- python import sorting alphabetically
    -- Django
      -- "djlint", -- HTML Template Linter and Formatter. Django - Jinja - Nunjucks - Handlebars - GoLang.
    -- Golang
      -- "go-debug-adapter",
      -- "gopls",
    -- Java
      -- "google-java-format",
      -- "java-debug-adapter",
      -- "java-language-server",
      -- "jdtls",
    -- Kotlin
      -- "kotlin_language_server",
      -- "gradle-language-server",
      -- "kotlin-debug-adapter",
      -- "ktlint",
    -- SQL2
      -- "sqls",
    
    -- C/CPP STUFF 
    "clangd",
    -- "clang-format", -- needs python

    -- OTHER STUFF 
    -- "docker-compose-language-service",
    -- "dockerfile-language-server",
    -- "editorconfig-checker",
    "gh",
    -- "gitlint", -- needs python
    -- "gitui",
    "markdownlint"
    -- "yaml-language-server",
    -- "yamallint"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  filters = {
    dotfiles = false,
    exclude = { vim.fn.stdpath "config" },
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
