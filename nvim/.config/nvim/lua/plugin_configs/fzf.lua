return {
    'ibhagwan/fzf-lua',
    config = function()
        require('fzf-lua').setup({})
        require('keymaps').setup()
    end
}
