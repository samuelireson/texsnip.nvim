local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local math = function()
	return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {
	s({ trig = "dc", snippetType = "snippet" }, {
		t("\\chapter{"),
		i(1),
		t({ "}", "" }),
	}),
	s({ trig = "df" }, {
		t({
			"\\documentclass{standalone}",
			"",
			"\\usepackage{tikz}",
			"\\usepackage{amssymb}",
			"\\usetikzlibrary{calc, positioning}",
			"",
		}),
		t({
			"\\begin{document}",
			"\\begin{tikzpicture}",
			"",
		}),
		i(0),
		t({
			"",
			"\\end{tikzpicture}",
			"\\end{document}",
		}),
	}),
	s({ trig = "di" }, {
		t("\\input{chapters/chapter-"),
		i(1),
		t("}"),
	}),
	s({ trig = "dn" }, {
		t({
			"\\documentclass[11pt]{report}",
			"",
			"\\input{~/Documents/year-3/preamble/final-year-notes-preamble.tex}",
			"",
			"\\title{",
		}),
		i(1),
		t({
			"}",
			"",
			"\\begin{document}",
			"",
		}),
		i(0),
		t({
			"",
			"\\end{document}",
		}),
	}),
	s({ trig = "ds", snippetType = "snippet" }, {
		t("\\section{"),
		i(1),
		t({ "}", "" }),
	}),
	s({ trig = "dt", snippetType = "snippet" }, {
		t("\\subsection{"),
		i(1),
		t({ "}", "" }),
	}),
}
