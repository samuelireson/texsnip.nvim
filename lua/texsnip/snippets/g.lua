local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node

local math = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
  -- Greek letters
  s({ trig = 'ga', snippetType = 'autosnippet' }, {
    t '\\alpha',
  }, { condition = math }),
  s({ trig = 'gb', snippetType = 'autosnippet' }, {
    t '\\beta',
  }, { condition = math }),
  s({ trig = 'gg', snippetType = 'autosnippet' }, {
    t '\\gamma',
  }, { condition = math }),
  s({ trig = 'gG', snippetType = 'autosnippet' }, {
    t '\\Gamma',
  }, { condition = math }),
  s({ trig = 'gd', snippetType = 'autosnippet' }, {
    t '\\delta',
  }, { condition = math }),
  s({ trig = 'gD', snippetType = 'autosnippet' }, {
    t '\\Delta',
  }, { condition = math }),
  s({ trig = 'ge', snippetType = 'autosnippet' }, {
    t '\\epsilon',
  }, { condition = math }),
  s({ trig = 'gz', snippetType = 'autosnippet' }, {
    t '\\zeta',
  }, { condition = math }),
  s({ trig = 'gh', snippetType = 'autosnippet' }, {
    t '\\eta',
  }, { condition = math }),
  s({ trig = 'gth', snippetType = 'autosnippet' }, {
    t '\\theta',
  }, { condition = math }),
  s({ trig = 'gTh', snippetType = 'autosnippet' }, {
    t '\\Theta',
  }, { condition = math }),
  s({ trig = 'gi', snippetType = 'autosnippet' }, {
    t '\\iota',
  }, { condition = math }),
  s({ trig = 'gk', snippetType = 'autosnippet' }, {
    t '\\kappa',
  }, { condition = math }),
  s({ trig = 'gl', snippetType = 'autosnippet' }, {
    t '\\lambda',
  }, { condition = math }),
  s({ trig = 'gL', snippetType = 'autosnippet' }, {
    t '\\Lambda',
  }, { condition = math }),
  s({ trig = 'gm', snippetType = 'autosnippet' }, {
    t '\\mu',
  }, { condition = math }),
  s({ trig = 'gn', snippetType = 'autosnippet' }, {
    t '\\nu',
  }, { condition = math }),
  s({ trig = 'gx', snippetType = 'autosnippet' }, {
    t '\\xi',
  }, { condition = math }),
  s({ trig = 'gX', snippetType = 'autosnippet' }, {
    t '\\Xi',
  }, { condition = math }),
  s({ trig = 'gp', snippetType = 'autosnippet' }, {
    t '\\pi',
  }, { condition = math }),
  s({ trig = 'gP', snippetType = 'autosnippet' }, {
    t '\\Pi',
  }, { condition = math }),
  s({ trig = 'gr', snippetType = 'autosnippet' }, {
    t '\\rho',
  }, { condition = math }),
  s({ trig = 'gs', snippetType = 'autosnippet' }, {
    t '\\sigma',
  }, { condition = math }),
  s({ trig = 'gS', snippetType = 'autosnippet' }, {
    t '\\Sigma',
  }, { condition = math }),
  s({ trig = 'gta', snippetType = 'autosnippet' }, {
    t '\\tau',
  }, { condition = math }),
  s({ trig = 'gu', snippetType = 'autosnippet' }, {
    t '\\upsilon',
  }, { condition = math }),
  s({ trig = 'gU', snippetType = 'autosnippet' }, {
    t '\\Upsilon',
  }, { condition = math }),
  s({ trig = 'gf', snippetType = 'autosnippet' }, {
    t '\\phi',
  }, { condition = math }),
  s({ trig = 'gF', snippetType = 'autosnippet' }, {
    t '\\Phi',
  }, { condition = math }),
  s({ trig = 'gvf', snippetType = 'autosnippet' }, {
    t '\\varphi',
  }, { condition = math }),
  s({ trig = 'gc', snippetType = 'autosnippet' }, {
    t '\\chi',
  }, { condition = math }),
  s({ trig = 'gw', snippetType = 'autosnippet' }, {
    t '\\psi',
  }, { condition = math }),
  s({ trig = 'gW', snippetType = 'autosnippet' }, {
    t '\\Psi',
  }, { condition = math }),
  s({ trig = 'go', snippetType = 'autosnippet' }, {
    t '\\omega',
  }, { condition = math }),
  s({ trig = 'gO', snippetType = 'autosnippet' }, {
    t '\\Omega',
  }, { condition = math }),
}
