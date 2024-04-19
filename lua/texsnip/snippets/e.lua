local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require 'luasnip.extras'
local rep = extras.rep

local math = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
  s({ trig = 'eb' }, {
    t '\\begin{',
    i(1),
    t { '}', '' },
    t '\t',
    i(2),
    t { '', '\\end{' },
    rep(1),
    t { '}', '' },
    i(0),
  }),
  s({ trig = 'ec' }, {
    t { '\\begin{corollary}', '' },
    i(1),
    t { '', '\\end{corollary}', '' },
  }),
  s({ trig = 'ed' }, {
    t { '\\begin{definition}', '' },
    i(1),
    t { '', '\\end{definition}', '' },
  }),
  s({ trig = 'ee' }, {
    t { '\\begin{example}', '' },
    i(1),
    t { '', '\\end{example}', '' },
  }),
  s({ trig = 'ef' }, {
    t { '\\begin{figure}', '' },
    t { '\\centering', '', '\\includegraphics{' },
    i(1),
    t { '}', '\\caption{' },
    i(2),
    t { '}', '', '\\end{figure}', '' },
  }),
  s({ trig = 'eF' }, {
    t { '\\begin{figure*}', '' },
    t { '\\centering', '', '\\includegraphics{' },
    i(1),
    t { '}', '\\caption{' },
    i(2),
    t { '}', '', '\\end{figure*}', '' },
  }),
  s({ trig = 'ei' }, {
    t '$ ',
    i(1),
    t ' $ ',
  }),
  s({ trig = 'ej' }, {
    t { '\\begin{align*}', '\t' },
    i(1),
    t { '', '\\end{align*}', '' },
  }),
  s({ trig = 'el' }, {
    t { '\\begin{lemma}', '' },
    i(1),
    t { '', '\\end{lemma}', '' },
  }),
  s({ trig = 'em' }, {
    t { '\\begin{marginfigure}', '' },
    t { '\\centering', '', '\\includegraphics{' },
    i(1),
    t { '}', '\\caption{' },
    i(2),
    t { '}', '', '\\end{marginfigure}', '' },
  }),
  s({ trig = 'eo' }, {
    t { '\\begin{enumerate}', '\t\\item ' },
    i(1),
    t { '', '\\end{enumerate}', '' },
  }),
  s({ trig = 'ep' }, {
    t { '\\begin{proposition}', '' },
    i(1),
    t { '', '\\end{proposition}', '' },
  }),
  s({ trig = 'er' }, {
    t { '\\begin{remark}', '' },
    i(1),
    t { '', '\\end{remark}', '' },
  }),
  s({ trig = 'et' }, {
    t { '\\begin{theorem}', '' },
    i(1),
    t { '', '\\end{theorem}', '' },
  }),
  s({ trig = 'eu' }, {
    t { '\\begin{itemize}', '\t\\item ' },
    i(1),
    t { '', '\\end{itemize}', '' },
  }),
}
