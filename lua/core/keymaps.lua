local M = {}

local options = { silent = true, noremap = true }

local function has_words_before()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
end

-- silent noremap
-- (not snore map because it's silent)
local function snoremap(t, opts)
    if opts then
        opts = vim.tbl_extend('force', options, opts)
    end
    vim.tbl_map(function(v)
        local mode, key, action = unpack(v)
        vim.keymap.set(mode, key, action, opts)
    end, t)
end

-- keymaps that don't depend on plugins
function M.core()
    local which = require('which-key')
    which.register({
        ['<c-bs>'] = { '<c-w>', 'Delete word' },
        ['<c-u>'] = { '<esc>v^d', 'Delete until ^' }
    }, { mode = 'i' })
    which.register({
        Y = { 'v$hy', 'Yank until EOL' },
        Q = { '', "Don't do ex-command" },
        ['<leader>e'] = { vim.diagnostic.open_float, 'Open diagnostics' },
        ['[d'] = { vim.diagnostic.goto_prev, 'Previous diagnostic' },
        [']d'] = { vim.diagnostic.goto_next, 'Next diagnostic' },
    })
    -- local mappings = {
    --     h = { ';', 'Repeat last f, t, F or T [count] times' },
    --     j = { 'h', 'Left' },
    --     k = { 'j', 'Down' },
    --     l = { 'k', 'Up' },
    --     [';'] = { 'l', 'Right' },
    -- }
    -- which.register(mappings)
    -- which.register(mappings, { mode = 'x' })
end

--#region plugin keymaps sorted alphabetically

-- nvim-cmp
function M.cmp(cmp, luasnip)
    local function tab(fallback)
        if cmp.visible() then
            if not cmp.get_selected_entry() then
                cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
            else
                cmp.confirm()
            end
        elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
        elseif has_words_before() then
            cmp.complete()
        else
            fallback()
        end
    end
    
    local function stab(fallback)
        if cmp.visible() then
            cmp.select_prev_item()
        elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
        else
            fallback()
        end
    end

    return {
        -- tab to luasnip expand or cmp complete
        ['<tab>'] = cmp.mapping(tab, { 'i', 's' }),
        ['<s-tab>'] = cmp.mapping(stab, { 'i', 's' }),
        ['<c-b>'] = cmp.mapping.scroll_docs(-4),
        ['<c-f>'] = cmp.mapping.scroll_docs(4),
        ['<c-space>'] = cmp.mapping.complete(),
        ['<c-e>'] = cmp.mapping.abort(),
        ['<cr>'] = cmp.mapping.confirm({ select = true }),
    }
end

-- comment
function M.comment()
    -- these are default mappings
    return {
        toggler = {
            ---Line-comment toggle keymap
            line = 'gcc',
            ---Block-comment toggle keymap
            block = 'gbc',
        },
        ---LHS of operator-pending mappings in NORMAL and VISUAL mode
        opleader = {
            ---Line-comment keymap
            line = 'gc',
            ---Block-comment keymap
            block = 'gb',
        },
        ---LHS of extra mappings
        extra = {
            ---Add comment on the line above
            above = 'gcO',
            ---Add comment on the line below
            below = 'gco',
            ---Add comment at the end of line
            eol = 'gcA',
        },
    }
end

-- LSP on_attach
function M.on_attach(_, buffer)
    local which = require('which-key')
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(buffer, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    local function format()
        vim.lsp.buf.format({
            async = true,
            -- only use null-ls to format
            filter = function(client)
                return client.name == 'null-ls'
            end
        })
    end
    which.register({
        ['<leader>'] = {
            c = {
                name = '+code',
                a = { vim.lsp.buf.code_action, 'Code action' },
            },
            D = { vim.lsp.buf.type_definition, 'Type definition' },
            r = {
                name = '+rename',
                r = { vim.lsp.buf.rename, 'Rename symbol' },
            },
            ['='] = {
                name = '+format',
                ['='] = { format, 'Format file' },
            },
        },
        g = {
            name = '+goto',
            d = { vim.lsp.buf.definition, 'Definition' },
            D = { vim.lsp.buf.declaration, 'Declaration' },
            i = { vim.lsp.buf.implementation, 'Implementation' },
            r = { vim.lsp.buf.references, 'References' },
        },
        K = { vim.lsp.buf.hover, 'Hover' },
    }, { buffer = buffer })
end

-- nvim-tree
function M.nvimtree()
    local which = require('which-key')
    local api = require('nvim-tree.api')
    which.register({
        ['<c-n>'] = { api.tree.toggle, 'Toggle Explorer' }
    })
end

-- which-key
function M.which()
    return {
        ['<leader>'] = {
            b = {
                name = '+buffer',

                ['1'] = { '<cmd>b1<cr>', 'which_key_ignore' },
                ['2'] = { '<cmd>b2<cr>', 'which_key_ignore' },
                ['3'] = { '<cmd>b3<cr>', 'which_key_ignore' },
                ['4'] = { '<cmd>b4<cr>', 'which_key_ignore' },
                ['5'] = { '<cmd>b5<cr>', 'which_key_ignore' },
                ['6'] = { '<cmd>b6<cr>', 'which_key_ignore' },
                ['7'] = { '<cmd>b7<cr>', 'which_key_ignore' },
                ['8'] = { '<cmd>b8<cr>', 'which_key_ignore' },
                ['9'] = { '<cmd>b9<cr>', 'which_key_ignore' },

                n = { '<cmd>bn<cr>', 'Go to next' },
                p = { '<cmd>bp<cr>' ,'Go to previous' },
                d = { '<cmd>bd<cr>', 'Delete' }
            },
            f = {
                name = '+file',
                b = { '<cmd>Telescope buffers<cr>', 'Find buffer' },
                f = { '<cmd>Telescope find_files<cr>', 'Find file' },
                s = { '<cmd>w<cr>', 'Save file' },
                S = { '<cmd>wa<cr>', 'Save all files' },
            },
            w = {
                name = '+window',
                h = { '<c-w>h', 'Go to left' },
                l = { '<c-w>l', 'Go to right' },
                v = { '<c-w>v', 'Split' },
                s = { '<c-w>s', 'Split window vertically' },
                x = { '<c-w>x', 'Swap current with next' },
                q = { '<c-w>q', 'Quit a window' },
                ['>'] = { '<c-w>>', 'Increase Width' },
                ['<'] = { '<c-w><', 'Decrease Width' },
                ['='] = { '<c-w>=', 'Make equal size' },
            },
        },
    }
end

--#endregion keymaps 

return M
