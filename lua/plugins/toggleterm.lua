return {
  'akinsho/toggleterm.nvim',
  config = function()
        require("toggleterm").setup{
            size = 1000,
            open_mapping = [[<c-\>]],
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = '70',
            start_in_insert = true,
            persist_size = false,
            direction = 'tab',
            close_on_exit = true,
            shell = vim.o.shell,
        }
        vim.keymap.set({'x', 'n', 's'}, '<C-S-t>', ':tabnew | terminal<CR>', {})
        vim.keymap.set({'x', 'n', 's'}, '<C-S-right>', ':tabnext<CR>', {})
        vim.keymap.set({'x', 'n', 's'}, '<C-S-left>', ':tabprev<CR>', {})
        vim.keymap.set('t', '<C-esc>', [[<C-\><C-n>]], opts)
        vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
        vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
        vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
        vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
        vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
        vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
    end
}
