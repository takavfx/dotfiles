return {
  {
    "vim-denops/denops.vim",
    config = function()
      vim.g["denops#debug"] = 0
    end,
  },
  { "takavfx/dailynote.vim", depends = { "vim-denops/denops.vim" } },
  -- { "Shougo/ddu.vim", depends = { "vim-denops/denops.vim" } },
  -- { "Shougo/ddu-ui-ff", depends = { "vim-denops/denops.vim" } },
  -- { "Shougo/ddu-source-file_rec", depends = { "vim-denops/denops.vim" } },
  -- { "Shougo/ddu-kind-file", depends = { "vim-denops/denops.vim" } },
  -- { "Shougo/ddu-filter-matcher_substring", depends = { "vim-denops/denops.vim" } },
  -- { "Shougo/ddu-kind-file", depends = { "vim-denops/denops.vim" } },
}
