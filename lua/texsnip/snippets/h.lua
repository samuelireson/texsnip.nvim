local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local math = function()
	return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {
	s({ trig = "hm", snippetType = "autosnippet" }, {
		t("\\mapsto "),
	}, { condition = math }),
	s({ trig = "hn", snippetType = "autosnippet" }, {
		t("\\to "),
	}, { condition = math }),
	s({ trig = "ho", snippetType = "autosnippet" }, {
		t("\\circ "),
	}, { condition = math }),
	s({ trig = "hsin", snippetType = "autosnippet" }, {
		t("\\sin("),
		i(1),
		t(")"),
	}, { condition = math }),
	s({ trig = "hcos", snippetType = "autosnippet" }, {
		t("\\cos("),
		i(1),
		t(")"),
	}, { condition = math }),
	s({ trig = "htan", snippetType = "autosnippet" }, {
		t("\\tan("),
		i(1),
		t(")"),
	}, { condition = math }),
	s({ trig = "hexp", snippetType = "autosnippet" }, {
		t("\\exp("),
		i(1),
		t(")"),
	}, { condition = math }),
	s({ trig = "hlog", snippetType = "autosnippet" }, {
		t("\\log("),
		i(1),
		t(")"),
	}, { condition = math }),
	s({ trig = "hln", snippetType = "autosnippet" }, {
		t("\\ln("),
		i(1),
		t(")"),
	}, { condition = math }),
	s({ trig = "harcsin", snippetType = "autosnippet" }, {
		t("\\arcsin("),
		i(1),
		t(")"),
	}, { condition = math }),
	s({ trig = "harccos", snippetType = "autosnippet" }, {
		t("\\arccos("),
		i(1),
		t(")"),
	}, { condition = math }),
	s({ trig = "harctan", snippetType = "autosnippet" }, {
		t("\\arctan("),
		i(1),
		t(")"),
	}, { condition = math }),
}
