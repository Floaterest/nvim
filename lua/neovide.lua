vim.o.gfn = 'Iosevka Custom NF,UD デジタル 教科書体 N-R:h16'

vim.g.neovide_remember_window_size = true

-- increase/decease font size
function _G.incfont(amount)
    local font = vim.api.nvim_eval('&gfn')
    local a, b = font:find(':h%d+')
    local size = font:sub(a + 2, b)

    vim.o.gfn = font:sub(0, a + 1) .. size + amount .. font:sub(b + 1)
end

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
map('n', '<leader>=', ':lua incfont(1)<cr>' , opt)
map('n', '<leader>-', ':lua incfont(-1)<cr>', opt)