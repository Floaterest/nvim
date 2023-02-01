-- the first-level key names don't matter
--[[ CFG for the values:

           S -> <color> | <link>
     <color> -> <fg> <bg> <decoration>
      <link> -> @<hlgroup>
  <fg>, <bg> -> [a-z]+ | . | -
<decoration> -> u | b | i | . | -

. means unset
- means NONE
--]]
return {
    plugins = {
        IndentMarker = 'dark . .', -- indent_blankline
        VirtColumn = 'dark . .', -- virt-column
    }, 
    ui = {
        Conceal = '- - .',
        CursorLineNr = 'lightest darker b',
        Folded = 'orange dark .',
        LineNr = 'lighter black .',
        MatchParen = 'teal darker u',
        Noise = '@Delimiter',
        NonText = 'light . .',
        Normal = 'white darkest .',
        PMenu = 'white black .',
        Title = 'yellow . .',
        Underlined = 'yellow . u',
        VertSplit = 'light black .',
        Visual = '. gray .',
    },
    git = {
        DiffAdd = 'lime - .',
        DiffChange = 'orange - .',
        -- it shows above the deleted lines
        DiffDelete = 'pink - u',
        GitSignsAdd = '@DiffAdd',
        GitSignsChange = '@DiffChange',
        GitSignsDelete = '@DiffDelete',
    },
    syntax = {
        Comment = 'gray . i',
        Constant = 'purple . .',
        Delimiter = 'light . .',
        Directory = 'yellow . .',
        Function = 'lime . .',
        Identifier = 'orange - -',
        Operator = 'pink . .',
        PreProc = 'pink . .',
        Special = 'purple . .',
        Statement = 'pink . -',
        StorageClass = 'pink . .',
        String = 'yellow . .',
        Type = 'sky . i',
        Tag = 'pink . .',
    },
    nvimtree = {
        NvimTreeFolderIcon = 'yellow . .',
        NvimTreeIndentMarker = '@IndentMarker',
        NvimTreeRootFolder = 'yellow . .',
        NvimTreeExecFile = '@Normal',
        NvimTreeGitDirty = 'sky . .',
        NvimTreeGitStaged = 'lime . .',
        NvimTreeGitMerge = 'teal . .',
        NvimTreeGitRenamed = 'teal . .',
        NvimTreeGitNew = 'orange . .',
        NvimTreeGitDeleted = '@Comment',
    },
    treesitter = {
        ['@tag.delimiter'] = '@Delimiter',
        TSConstBuiltin = 'sky . .',
        TSPunctBracket = '@Delimiter',
        TSField = '- - -',
        TSFuncBuiltin = '@TSConstBuiltin',
        TSKeywordFunction = 'sky . i',
        TSNamespace = '- . .',
        TSParameter = 'orange . .',
        TSProperty = '- . .',
        TSVariableBuiltin = '@TSConstBuiltin',
        TSConstructor = '@TSConstBuiltin',
    },
    -- #region languages
    css = {
        cssBraces = '@Delimiter',
        cssCustomProp = '@Normal',
        cssIdentifier = 'orange . i',
        cssPseudoClassId = 'sky . i',
        cssProp = '@Normal',
        cssClassName = 'lime . i',
        cssClassNameDot = '@Delimiter',
        cssImportant = 'pink . .',
    },
    sass = {
        sassVariableAssignment = '@Delimiter',
        sassFunctionName = '@Function',
        sassProperty = '@Delimiter',
        sassMixinName = '@TSFuncBuiltin',
    },
    html = {
        htmlTag = '@Delimiter',
        htmlEndTag = '@Delimiter',
    },
    markdown = {
        markdownBold = '. . b',
        markdownItalic = '. . i',
        markdownListMarker = '@Delimiter',
    },
    -- #endregion languages
}
