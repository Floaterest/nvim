local luasnip = require('luasnip')

luasnip.config.set_config({
    history = false, enable_autosnippets = true,
    region_check_events = 'InsertEnter', store_selection_keys = '<tab>',
})

luasnip.filetype_extend('svelte', { 'typescript' })

require('luasnip.loaders.from_lua').lazy_load()
-- local path = { paths = { vim.fn.getcwd() .. '/luasnippets/' }}
-- require('luasnip.loaders.from_lua').lazy_load(path)
-- require('luasnip.loaders.from_lua').lazy_load('./luasnippets')

vim.cmd([[
    au BufWritePost */luasnippets/*.lua :lua require('luasnip.loaders.from_lua').lazy_load()
    command! LuaSnipEdit :lua require('luasnip.loaders.from_lua').edit_snippet_files()
]])
