return {
        "akinsho/toggleterm.nvim",

        config = function()
                require('toggleterm').setup({
        open_mapping = '<C-g>',
        direction = 'vertical',
        shade_terminals = true
 })
end,
}
