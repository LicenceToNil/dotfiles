require'FTerm'.setup({
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})

-- Keybinding
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Closer to the metal
map('n', ',t', '<CMD>lua require("FTerm").toggle()<CR>', opts)
map('t', ',t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)

