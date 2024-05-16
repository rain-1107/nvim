require'nvim-treesitter.configs'.setup {
  -- will require install llvm for windows (winget install llvm) then add to PATH
  ensure_installed = { "javascript", "python", "c", "cpp", "lua", "vim", "vimdoc", "query" },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
require'nvim-treesitter.install'.compilers = { "clang" }
