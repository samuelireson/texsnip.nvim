local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local math = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
  s({ trig = 'oa', snippetType = 'autosnippet' }, {
    t '\\bigcap_{',
    i(1),
    t '}^{',
    i(2),
    t '}{',
    i(3),
    t '}',
  }, { condition = math }),
  s({ trig = 'od(%d)', snippetType = 'autosnippet', regTrig = true }, {
    f(function(_, snip)
      if snip.captures[1] == '1' then
        return '\\frac{\\d{ '
      else
        return '\\frac{\\d^' .. snip.captures[1] .. '{'
      end
    end, {}),
    i(1),
    t '}}{\\d{',
    i(2),
    f(function(_, snip)
      if snip.captures[1] == '1' then
        return '}}'
      else
        return '^' .. snip.captures[1] .. '}'
      end
    end, {}),
  }, { condition = math }),
  s({ trig = 'oe(%d)', snippetType = 'autosnippet', regTrig = true }, {
    f(function(_, snip)
      if snip.captures[1] == '1' then
        return '\\frac{\\partial '
      else
        return '\\frac{\\partial^' .. snip.captures[1] .. ' '
      end
    end, {}),
    i(1),
    t '}{\\partial ',
    i(2),
    f(function(_, snip)
      if snip.captures[1] == '1' then
        return '}'
      else
        return '^' .. snip.captures[1] .. '}'
      end
    end, {}),
  }, { condition = math }),
  s({ trig = 'of', snippetType = 'autosnippet' }, {
    t '\\frac{',
    i(1),
    t '}{',
    i(2),
    t '}',
  }, { condition = math }),
  s({ trig = 'oi', snippetType = 'autosnippet' }, {
    t '\\int_{',
    i(1),
    t '}^{',
    i(2),
    t '}{',
    i(3),
    t '}\\,d ',
  }, { condition = math }),
  s({ trig = 'op', snippetType = 'autosnippet' }, {
    t '\\prod_{',
    i(1),
    t '}^{',
    i(2),
    t '}{',
    i(3),
    t '}',
  }, { condition = math }),
  s({ trig = 'os', snippetType = 'autosnippet' }, {
    t '\\sum_{',
    i(1),
    t '}^{',
    i(2),
    t '}{',
    i(3),
    t '}',
  }, { condition = math }),
  s({ trig = 'ou', snippetType = 'autosnippet' }, {
    t '\\bigcup_{',
    i(1),
    t '}^{',
    i(2),
    t '}{',
    i(3),
    t '}',
  }, { condition = math }),
}
