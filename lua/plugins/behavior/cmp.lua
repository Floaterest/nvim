local cmp = require('cmp')
local luasnip = require('luasnip')
local keymaps = require('core.keymaps').cmp(cmp, luasnip)

local function notcomment()
    local context = require('cmp.config.context')
    -- if in command mode
    if vim.api.nvim_get_mode().mode == 'c' then
        return true
    end
    local treesitter = context.in_treesitter_capture("comment")
    local syntax = context.in_syntax_group("Comment")
    return not treesitter and not syntax
end

cmp.setup({
    enabled = notcomment,
    snippet = {
        expand = function(args) luasnip.lsp_expand(args.body) end,
    },
    mapping = cmp.mapping.preset.insert(keymaps),
    sources = cmp.config.sources({
        { name = 'nvim_lua' }, -- one day I will develop my nvim config in nvim
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
    })
})
