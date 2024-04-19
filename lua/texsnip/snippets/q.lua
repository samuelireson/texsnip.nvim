local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local math = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
  s({ trig = 'q-b', snippetType = 'autosnippet' }, {
    t '\\langle ',
    i(1),
    t ' | ',
  }, { condition = math }),
  s({ trig = 'q-k', snippetType = 'autosnippet' }, {
    t '| ',
    i(1),
    t ' \\rangle ',
  }, { condition = math }),
  s({ trig = 'qbk', snippetType = 'autosnippet' }, {
    t '\\langle ',
    i(1),
    t ' | ',
    i(2),
    t ' \\rangle ',
  }, { condition = math }),
}
