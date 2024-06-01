vim.keymap.set("i", "<C-J>", 'copilot#Accept("\\<Cr>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

return {
  { "petertriho/nvim-scrollbar" },
  { "xiyaowong/transparent.nvim" },
  { "github/copilot.vim", layzy = false },
}
