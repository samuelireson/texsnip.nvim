local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local math = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
  s({ trig = 'ml', snippetType = 'autosnippet' }, {
    t '\\lim_{',
    i(1),
    t '}{',
    i(2),
    t '}',
  }, { condition = math }),
  s({ trig = 'mm', snippetType = 'autosnippet' }, {
    t '\\inf_{',
    i(1),
    t '}{',
    i(2),
    t '}',
  }, { condition = math }),
  s({ trig = 'mn', snippetType = 'autosnippet' }, {
    t '\\sup_{',
    i(1),
    t '}{',
    i(2),
    t '}',
  }, { condition = math }),
  s({ trig = 'mq', snippetType = 'autosnippet' }, {
    t '\\min_{',
    i(1),
    t '}\\{ ',
    i(2),
    t ' \\}',
  }, { condition = math }),
  s({ trig = 'mQ', snippetType = 'autosnippet' }, {
    t '\\argmin_{',
    i(1),
    t '}\\{ ',
    i(2),
    t ' \\}',
  }, { condition = math }),
  s({ trig = 'mw', snippetType = 'autosnippet' }, {
    t '\\max_{',
    i(1),
    t '}\\{ ',
    i(2),
    t ' \\}',
  }, { condition = math }),
  s({ trig = 'mW', snippetType = 'autosnippet' }, {
    t '\\argmax_{',
    i(1),
    t '}\\{ ',
    i(2),
    t ' \\}',
  }, { condition = math }),
}
