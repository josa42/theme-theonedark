call plug#begin()
Plug '~/github/josa42/theme-theonedark/dist/vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {'javascript'},

  sync_install = true,
  auto_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF

execute 'source ' . expand('<sfile>:p:h') . '/init.vim'
