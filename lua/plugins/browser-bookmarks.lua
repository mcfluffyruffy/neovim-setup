return {
    {
        'dhruvmanila/browser-bookmarks.nvim',
        version = '*',
        opts = {
            selected_browser = 'firefox',
            dependencies = {
                'kkharji/sqlite.lua',
                'nvim-telescope/telescope.nvim',
            },
        },
        config = function()
            require('browser_bookmarks').setup({
                selected_browser = 'firefox',
                config_dir = '/Users/erind/Library/Application Support/Firefox/Profiles'
            })
            vim.keymap.set("n", "<leader>b", ":Telescope bookmarks<CR>", {})
        end,
  },
}

