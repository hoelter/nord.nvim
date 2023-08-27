local M = {}

-- neovim terminal mode colors
local function set_terminal_colors(colors)
  vim.g.terminal_color_0 = colors.darker_night_1
  vim.g.terminal_color_1 = colors.red_11
  vim.g.terminal_color_2 = colors.green_14
  vim.g.terminal_color_3 = colors.yellow_13
  vim.g.terminal_color_4 = colors.arctic_blue_9
  vim.g.terminal_color_5 = colors.plum_15
  vim.g.terminal_color_6 = colors.ice_blue_8
  vim.g.terminal_color_7 = colors.light_snow_5
  vim.g.terminal_color_8 = colors.night_3
  vim.g.terminal_color_9 = colors.red_11
  vim.g.terminal_color_10 = colors.green_14
  vim.g.terminal_color_11 = colors.yellow_13
  vim.g.terminal_color_12 = colors.arctic_blue_9
  vim.g.terminal_color_13 = colors.plum_15
  vim.g.terminal_color_14 = colors.green_blue_7
  vim.g.terminal_color_15 = colors.lightest_snow_6 
end

M.setup = function()
  local config = require("nord").config
  local colors = require("nord.palette").get_base_colors()

  set_terminal_colors(colors)

  local groups = {
    -- Nord base groups
    NordFgSnow4 = { fg = colors.snow_4 },
    NordFgGreenBlue7 = { fg = colors.green_blue_7 },
    NordFgIceBlue8 = { fg = colors.ice_blue_8 },
    NordFgArcticBlue9 = { fg = colors.arctic_blue_9 },
    NordFgOceanBlue10 = { fg = colors.ocean_blue_10 },
    NordFgRed11 = { fg = colors.red_11 },
    NordFgPlum15 = { fg = colors.plum_15 },

    NordBgNight3 = { bg = colors.night_3 },

    -- attributes
    Bold = { bold = config.bold },
    Italic = { italic = config.italic.on },
    Underlined = { underline = config.underline },

    -- editor --
    ColorColumn = { bg = colors.darker_night_1 },
    Cursor = { fg = colors.darkest_night_0, bg = colors.snow_4 },
    CursorLine = { bg = colors.darker_night_1 },
    Error = { fg = colors.snow_4, bg = colors.red_11 },
    iCursor = { fg = colors.darkest_night_0, bg = colors.snow_4 },
    LineNr = { fg = colors.night_3, bg = "NONE" },
    MatchParen = { fg = colors.ice_blue_8, bg = colors.night_3 },
    NonText = { fg = colors.dark_night_2 },
    Normal = { fg = colors.snow_4, bg = colors.darkest_night_0 },
    Pmenu = { fg = colors.snow_4, bg = colors.dark_night_2 },
    PmenuSbar = { fg = colors.snow_4, bg = colors.dark_night_2 },
    PmenuSel = { fg = colors.ice_blue_8, bg = colors.night_3 },
    PmenuThumb = { fg = colors.ice_blue_8, bg = colors.night_3 },
    SpecialKey = { fg = colors.night_3 },
    SpellBad = { fg = colors.red_11, bg = colors.darkest_night_0, undercurl = config.undercurl, sp = colors.red_11 },
    SpellCap = { fg = colors.yellow_13 , bg = colors.darkest_night_0, undercurl = config.undercurl, sp = colors.yellow_13 },
    SpellLocal = { fg = colors.light_snow_5, bg = colors.darkest_night_0, undercurl = config.undercurl, sp = colors.light_snow_5 },
    SpellRare = { fg = colors.lightest_snow_6, bg = colors.darkest_night_0, undercurl = config.undercurl, sp = colors.lightest_snow_6 },
    Visual = { bg = colors.dark_night_2 },
    VisualNOS = { bg = colors.dark_night_2 },

    -- diff TODO: Consider supporting uniform_diff_background config option
    diffAdded = { link = "DiffAdd" },
    DiffAdd = { fg = colors.green_14, bg = colors.darker_night_1 },
    DiffChange = { fg = colors.yellow_13, bg = colors.darker_night_1 },
    DiffDelete = { fg = colors.red_11, bg = colors.darker_night_1 },
    DiffText = { fg = colors.arctic_blue_9, bg = colors.darker_night_1 },
    diffChanged = { link = "DiffChange" },
    diffRemoved = { link = "DiffDelete" },
    -- git
    gitconfigVariable = { link = "NordFgGreenBlue7" },


    -- gutter
    CursorColumn = { bg = colors.darker_night_1 },
    CursorLineNr = { fg = colors.snow_4 },
    Folded = { fg = colors.night_3, bg = colors.darker_night_1, bold = config.bold },
    FoldColumn = { fg = colors.night_3, bg = colors.darkest_night_0 },
    SignColumn = { fg = colors.darker_night_1, bg = colors.darkest_night_0 },
    -- navigation
    Directory = { link = "NordFgIceBlue8" },
    -- prompt/status
    EndOfBuffer = { fg = colors.darker_night_1 },
    ErrorMsg = { fg = colors.snow_4, bg = colors.red_11 },
    ModeMsg = { link = "NordFgSnow4" },
    MoreMsg = { link = "NordFgIceBlue8" },
    Question = { link = "NordFgSnow4" },
    StatusLine = { fg = colors.ice_blue_8, bg = colors.night_3 },
    StatusLineNC = { fg = colors.snow_4, bg = colors.darker_night_1 },
    WarningMsg = { fg = colors.darkest_night_0, bg = colors.yellow_13 },
    WildMenu = { fg = colors.ice_blue_8, bg = colors.darker_night_1 },
    -- search
    IncSearch = { fg = colors.lightest_snow_6, bg = colors.ocean_blue_10, underline = config.underline },
    Search = { fg = colors.darker_night_1, bg = colors.ice_blue_8 },
    -- tabs
    TabLine = { fg = colors.snow_4, bg = colors.darker_night_1 },
    TabLineFill = { fg = colors.snow_4, bg = colors.darker_night_1 },
    TabLineSel = { fg = colors.ice_blue_8, bg = colors.night_3 },
    -- window
    Title = { fg = colors.snow_4 },
    VertSplit = { fg = colors.dark_night_2, bg = colors.darkest_night_0 },

    -- language based groups
    Boolean = { fg = colors.arctic_blue_9 },
    Character = { fg = colors.green_14 },
    Comment = { fg = colors.bright_night_3b, italic = config.italic.comments },
    Conceal = { bg = "NONE" },
    Conditional = { link = "NordFgArcticBlue9" },
    Constant = { link = "NordFgSnow4" },
    Decorator = { fg = colors.orange_12 },
    Define = { link = "NordFgArcticBlue9" },
    Delimiter = { fg = colors.lightest_snow_6 },
    Exception = { link = "NordFgArcticBlue9" },
    Float = { link = "NordFgPlum15" },
    Function = { link = "NordFgIceBlue8" },
    Identifier = { fg = colors.snow_4 },
    Include = { link = "NordFgArcticBlue9" },
    Keyword = { link = "NordFgArcticBlue9" },
    Label = { link = "NordFgArcticBlue9" },
    Number = { link = "NordFgPlum15" },
    Operator = { fg = colors.arctic_blue_9, italic = config.italic.operators },
    PreProc = { fg = colors.arctic_blue_9 },
    Repeat = { link = "NordFgArcticBlue9" },
    Special = { link = "NordFgSnow4" },
    SpecialChar = { fg = colors.yellow_13 },
    SpecialComment = { fg = colors.ice_blue_8, italic = config.italic.comments },
    Statement = { link = "NordFgArcticBlue9" },
    StorageClass = { link = "NordFgArcticBlue9" },
    String = { fg = colors.green_14, italic = config.italic.strings },
    Structure = { link = "NordFgArcticBlue9" },
    Tag = { link = "NordFgSnow4" },
    Todo = { fg = colors.yellow_13, bg = "NONE", italic = config.italic.comments },
    Type = { fg = colors.arctic_blue_9 },
    Typedef = { link = "NordFgArcticBlue9" },
    -- lang group links (all maybe not necessary)
    Annotation = { link = "Decorator" },
    Macro = { link = "Define" },
    PreCondit = { link = "PreProc" },
    Variable = { link = "Identifier" },


    -- Nevoim LSP Things
    healthError = { fg = colors.red_11, bg = colors.darker_night_1 },
    healthSuccess = { fg = colors.red_11, bg = colors.darker_night_1 },
    TermCursorNC = { bg = colors.darker_night_1 },

    DiagnosticWarn = { fg = colors.yellow_13 },
    DiagnosticUnderlineWarn = { fg = colors.yellow_13, undercurl = config.undercurl },
    DiagnosticError = { link = "NordFgRed11" },
    DiagnosticUnderlineError = { fg = colors.red_11, undercurl = config.undercurl },
    DiagnosticInfo = { link = "NordFgIceBlue8" },
    DiagnosticUnderlineInfo = { fg = colors.ice_blue_8, undercurl = config.undercurl },
    DiagnosticHint = { link = "NordFgOceanBlue10" },
    DiagnosticUnderlineHint = { fg = colors.ocean_blue_10, undercurl = config.undercurl },
    LspCodeLens = { fg = colors.bright_night_3b },
    LspReferenceText = { link = "NordBgNight3" },
    LspReferenceRead = { link = "NordBgNight3" },
    LspReferenceWrite = { link = "NordBgNight3" },
    LspSignatureActiveParameter = { fg = colors.ice_blue_8, underline = config.underline },

    -- Language Specific groups
    -- asciidocAttributeEntry = { link = "NordFgOceanBlue10" },
    -- asciidocAttributeList = { link = "NordFgOceanBlue10" },
    -- asciidocAttributeRef = { link = "NordFgOceanBlue10" },
    -- asciidocHLabel = { link = "NordFgArcticBlue9" },
    -- asciidocListingBlock = { link = "NordFgGreenBlue7" },
    -- asciidocMacroAttributes = { link = "NordFgIceBlue8" },
    -- asciidocOneLineTitle = { link = "NordFgIceBlue8" },
    -- asciidocPassthroughBlock = { link = "NordFgArcticBlue9" },

    -- call s:hi("asciidocQuotedMonospaced", s:nord7_gui, "", s:nord7_term, "", "", "")
    -- call s:hi("asciidocTriplePlusPassthrough", s:nord7_gui, "", s:nord7_term, "", "", "")
    -- hi! link asciidocAdmonition Keyword
    -- hi! link asciidocAttributeRef markdownH1
    -- hi! link asciidocBackslash Keyword
    -- hi! link asciidocMacro Keyword
    -- hi! link asciidocQuotedBold Bold
    -- hi! link asciidocQuotedEmphasized Italic
    -- hi! link asciidocQuotedMonospaced2 asciidocQuotedMonospaced
    -- hi! link asciidocQuotedUnconstrainedBold asciidocQuotedBold
    -- hi! link asciidocQuotedUnconstrainedEmphasized asciidocQuotedEmphasized
    -- hi! link asciidocURL markdownLinkText

    -- Plugins
    -- > tpope/vim-fugitive
    gitcommitDiscardedFile = { link = "NordFgRed11" },
    gitcommitUntrackedFile = { link = "NordFgRed11" },
    gitcommitSelectedFile = { fg = colors.green_14 },
  }

  for group, hl in pairs(config.overrides) do
    if groups[group] then
      -- "link" should not mix with other configs (:h hi-link)
      groups[group].link = nil
    end

    groups[group] = vim.tbl_extend("force", groups[group] or {}, hl)
  end

  return groups
end

return M

