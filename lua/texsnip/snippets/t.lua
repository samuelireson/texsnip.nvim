local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local math = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
  s({ trig = 'td', snippetType = 'autosnippet' }, {
    t '^{\\dagger}',
  }, { condition = math }),
  s({ trig = 'th', snippetType = 'autosnippet' }, {
    t '\\hat{',
    i(1),
    t '} ',
  }, { condition = math }),
  s({ trig = 'ti', snippetType = 'autosnippet' }, {
    t '^{-1}',
  }, { condition = math }),
  s({ trig = 'tn', snippetType = 'autosnippet' }, {
    t '\\text{ ',
    i(1),
    t ' } ',
  }, { condition = math }),
  s({ trig = 'to', snippetType = 'autosnippet' }, {
    t '\\overline{',
    i(1),
    t '}',
  }, { condition = math }),
  s({ trig = 'tO', snippetType = 'autosnippet' }, {
    t '\\overbrace{',
    i(1),
    t '}^{',
    i(2),
    t '}',
  }, { condition = math }),
  s({ trig = 'tp', snippetType = 'autosnippet' }, {
    t '^{(',
    i(1),
    t ')}',
  }, { condition = math }),
  s({ trig = 'tr', snippetType = 'autosnippet' }, {
    t '\\mathrm{',
    i(1),
    t '}',
  }, { condition = math }),
  s({ trig = 'ts', snippetType = 'autosnippet' }, {
    t '^{*}',
  }, { condition = math }),
  s({ trig = 'tt', snippetType = 'autosnippet' }, {
    t '\\tilde{',
    i(1),
    t '} ',
  }, { condition = math }),
  s({ trig = 'tu', snippetType = 'autosnippet' }, {
    t '\\underline{',
    i(1),
    t '}',
  }, { condition = math }),
  s({ trig = 'tU', snippetType = 'autosnippet' }, {
    t '\\underbrace{',
    i(1),
    t '}_{',
    i(2),
    t '}',
  }, { condition = math }),
  s({ trig = 'tv', snippetType = 'autosnippet' }, {
    t '\\vec{',
    i(1),
    t '}',
  }, { condition = math }),
  s({ trig = '_', snippetType = 'autosnippet', wordTrig = false }, {
    t '_{',
    i(1),
    t '}',
  }, { condition = math }),
  s({ trig = '^', snippetType = 'autosnippet', wordTrig = false }, {
    t '^{',
    i(1),
    t '}',
  }, { condition = math }),
}
