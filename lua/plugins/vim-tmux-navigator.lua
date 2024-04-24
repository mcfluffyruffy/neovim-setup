return {
    "christoomey/vim-tmux-navigator",
    vim.keymap.set('n', 'C-h', ':TmuxNavigateLeft<CR>'),
    vim.keymap.set('n', 'C-j', ':TmuxNavigateDown<CR>'),
    vim.keymap.set('n', 'C-u', ':TmuxNavigateUp<CR>'),
    vim.keymap.set('n', 'C-k', ':TmuxNavigateRight<CR>'),
}
