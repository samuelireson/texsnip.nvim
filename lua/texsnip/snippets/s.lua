local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local math = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
  s({ trig = 'sc', snippetType = 'autosnippet' }, {
    t '\\cdot ',
  }, { condition = math }),
  s({ trig = 'sC', snippetType = 'autosnippet' }, {
    t '\\cdots ',
  }, { condition = math }),
  s({ trig = 'sd', snippetType = 'autosnippet' }, {
    t '\\d{',
    i(1),
    t '}',
  }, { condition = math }),
  s({ trig = 'sp', snippetType = 'autosnippet' }, {
    t '\\partial ',
  }, { condition = math }),
  s({ trig = 'sx', snippetType = 'autosnippet' }, {
    t '\\times ',
  }, { condition = math }),
  s({ trig = 'sv', snippetType = 'autosnippet' }, {
    t '\\vdots',
  }, { condition = math }),
  s({ trig = 'sz', snippetType = 'autosnippet' }, {
    t '\\infty',
  }, { condition = math }),
}
