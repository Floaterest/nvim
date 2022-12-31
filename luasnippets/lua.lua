local function sfmta(_, table)
    local trig, a = unpack(table)
    local _, n = a:gsub('<>', '')
    local opt = {}
    for index = 1, n do
        opt[index] = i(n-index)
    end
    return s(trig, fmta(a, opt))
end

local snips = {
    { 'f', 'function <>\nend' },
    { 'lf', 'local function <>\nend' },
}

local autos = {
    { 'if ', 'if <> then\n\t<>\nend' },
}

return map(snips, sfmta), map(autos, sfmta)