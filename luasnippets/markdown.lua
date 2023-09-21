local List = require('plenary.collections.py_list')
require('util.luasnip')

local snips = {
    symbols = {
        -- logic
        bc = '∵',
        tf = '∴',
        conj = '∧',
        disj = '∨',
        uni = '∀',
        exi = '∃',
        nexi = '∄',
        equiv = '≡',
        neg = '¬',
        ne = '≠',
        -- set theory
        no = '∅',
        ['in'] = '∈',
        nin = '∉',
        un = '⋃',
        it = '⋂',
        -- greek
        D = 'Δ',
        e = 'ε',
        G = 'Γ',
        l = 'λ',
        P = 'Π',
        S = 'Σ',
        -- misc
        sqrt = '√',
        inf = '∞',
        bot = '⊥',
    },
    details = {
        def = 'definition', the = 'theorem', exa = 'example', alg = 'algorithm',
    }
}

local function mat(_, snip)
    -- v for vertical bars (determinant)
    local columns = tonumber(snip.captures[2])
    local env = snip.captures[1] == 'v' and 'vmatrix' or 'pmatrix'
    local content = { '\\begin{' .. env .. '}' }
    local i, line = 1, ''
    -- for each space-separated tokens
    for s in snip.captures[3]:gmatch('%S+') do
        if i % columns == 0 then
            content[#content + 1] = line .. s .. '\\\\'
            line = ''
        else
            line = line .. s .. '&'
        end
        i = i + 1
    end
    content[#content + 1] = '\\end{' .. env .. '}'
    return table.concat(content, '')
end

local function details(attr)
    local opts = { attr = attr, i(0) }
    return fmt('<details {attr}open>\n<summary>{}</summary>\n</details>', opts)
end

local leader = '\\'
local function slead(trig, ...)
    return s({ trig = leader .. trig, wordTrig = false }, ...)
end
local function sleadr(trig, ...)
    return s({ trig = leader .. trig, wordTrig = false, regTrig = true }, ...)
end

local function kv_slead(fun, t)
    return kv_map(function(trig, snip)
        return slead(trig .. ' ', fun(snip))
    end, t)
end

local snippets = List.new({
    -- v for determinant, %d for column count
    sleadr('(v?)mat(%d) (.+)', f(mat)),
    sleadr('code(%l+)', {
        t('<Code code="'), i(0), t('" lang="'), l(l.CAPTURE1), t('"/>')
    }),
}):concat(
    kv_map(function(k, v) return s(k, t(v)) end, snips.symbols)
)

local autosnippets = List.new({
    -- <details> with optional class
    sleadr('det(%l*) ', details(f(function(_, snip)
        local cap = snip.captures[1]
        return cap:len() > 0 and string.format('class="%s" ', cap) or ''
    end))),
    slead('tikz ', fmt('<Tikz>\n{{String.raw`\n{}\n`}}\n</Tikz>', { i(0) })),
}):concat(
    kv_slead(function(class)
        return details(string.format('class="%s" ', class))
    end, snips.details)
)

return snippets, autosnippets
