local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- local lsp_formatting = function(bufnr)
--  vim.lsp.buf.format({
--    filter = function(client)
--      return client.name == "null-ls"
--    end,
--    bufnr = bufnr,
--  })
--end

local async_formatting = function(bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()

  vim.lsp.buf_request(
    bufnr,
    "textDocument/formatting",
    vim.lsp.util.make_formatting_params({}),
    function(err, res, ctx)
      if err then
        local err_msg = type(err) == "string" and err or err.message
        -- you can modify the log message / level (or ignore it completely)
        vim.notify("formatting: " .. err_msg, vim.log.levels.WARN)
        return
      end

      -- don't apply results if buffer is unloaded or has been modified
      if not vim.api.nvim_buf_is_loaded(bufnr) or vim.api.nvim_buf_get_option(bufnr, "modified") then
        return
      end

      if res then
        local client = vim.lsp.get_client_by_id(ctx.client_id)
        vim.lsp.util.apply_text_edits(res, bufnr, client and client.offset_encoding or "utf-16")
        vim.api.nvim_buf_call(bufnr, function()
          vim.cmd("silent noautocmd update")
        end)
      end
    end
  )
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  -- b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettierd,

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
}


local on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        -- lsp_formatting(bufnr)
        async_formatting(bufnr)
      end,
    })
  end
end

-- local on_attach = function(client, bufnr)
--   -- you can reuse a shared lspconfig on_attach callback here
--   if client.supports_method("textDocument/formatting") then
--     vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
--     vim.api.nvim_create_autocmd("BufWritePre", {
--       group = augroup,
--       buffer = bufnr,
--       callback = function()
--         -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
--         vim.lsp.buf.formatting_sync()
--       end,
--     })
--   end
-- end

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = on_attach,
}
