local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local math = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
  s({ trig = 'la', snippetType = 'autosnippet' }, {
    t '\\langle ',
    i(1),
    t ' \\rangle',
  }, { condition = math }),
  s({ trig = 'lb', snippetType = 'autosnippet' }, {
    t '[ ',
    i(1),
    t ' ]',
  }, { condition = math }),
  s({ trig = 'lc', snippetType = 'autosnippet' }, {
    t '\\{ ',
    i(1),
    t ' \\}',
  }, { condition = math }),
  s({ trig = 'ld', snippetType = 'autosnippet' }, {
    t '\\left. ',
    i(1),
    t ' \\right.',
  }, { condition = math }),
  s({ trig = 'lm', snippetType = 'autosnippet' }, {
    t '| ',
    i(1),
    t ' |',
  }, { condition = math }),
  s({ trig = 'ln', snippetType = 'autosnippet' }, {
    t '\\| ',
    i(1),
    t ' \\|',
  }, { condition = math }),
  s({ trig = 'lp', snippetType = 'autosnippet' }, {
    t '( ',
    i(1),
    t ' )',
  }, { condition = math }),

  s({ trig = 'lA', snippetType = 'autosnippet' }, {
    t '\\left\\langle ',
    i(1),
    t ' \\right\\rangle',
  }, { condition = math }),
  s({ trig = 'lB', snippetType = 'autosnippet' }, {
    t '\\left[ ',
    i(1),
    t ' \\right]',
  }, { condition = math }),
  s({ trig = 'lC', snippetType = 'autosnippet' }, {
    t '\\left\\{ ',
    i(1),
    t ' \\right\\}',
  }, { condition = math }),
  s({ trig = 'lD', snippetType = 'autosnippet' }, {
    t '\\lfloor ',
    i(1),
    t ' \\rfloor',
  }, { condition = math }),
  s({ trig = 'lM', snippetType = 'autosnippet' }, {
    t '\\left| ',
    i(1),
    t ' \\right|',
  }, { condition = math }),
  s({ trig = 'lN', snippetType = 'autosnippet' }, {
    t '\\left\\| ',
    i(1),
    t ' \\right\\|',
  }, { condition = math }),
  s({ trig = 'lP', snippetType = 'autosnippet' }, {
    t '\\left( ',
    i(1),
    t ' \\right)',
  }, { condition = math }),
  s({ trig = 'lU', snippetType = 'autosnippet' }, {
    t '\\lceil ',
    i(1),
    t ' \\rceil',
  }, { condition = math }),
}
