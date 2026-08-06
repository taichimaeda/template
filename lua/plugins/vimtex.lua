return {
  "lervag/vimtex",
  init = function()
    vim.g.vimtex_view_method = "zathura"

    -- prevent VimTex mappings from getting overwritten
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "tex",
      callback = function(args)
        vim.schedule(function()
          if vim.api.nvim_buf_is_valid(args.buf) then
            vim.api.nvim_buf_call(args.buf, function() vim.cmd "call vimtex#init()" end)
          end
        end)
      end,
    })
  end,
}
