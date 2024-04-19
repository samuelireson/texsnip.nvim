local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

local math = function()
	return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {
	s({ trig = "aa", snippetType = "autosnippet" }, {
		t("\\cap "),
	}, { condition = math }),
	s({ trig = "ab", snippetType = "autosnippet" }, {
		t("\\impliedby "),
	}, { condition = math }),
	s({ trig = "ac", snippetType = "autosnippet" }, {
		t("\\cong "),
	}, { condition = math }),
	s({ trig = "ad", snippetType = "autosnippet" }, {
		t("\\sim "),
	}, { condition = math }),
	s({ trig = "ae", snippetType = "autosnippet" }, {
		t("\\iff "),
	}, { condition = math }),
	s({ trig = "af", snippetType = "autosnippet" }, {
		t("\\forall "),
	}, { condition = math }),
	s({ trig = "ag", snippetType = "autosnippet" }, {
		t("\\geq "),
	}, { condition = math }),
	s({ trig = "ah", snippetType = "autosnippet" }, {
		t("\\simeq "),
	}, { condition = math }),
	s({ trig = "ai", snippetType = "autosnippet" }, {
		t("\\in "),
	}, { condition = math }),
	s({ trig = "al", snippetType = "autosnippet" }, {
		t("\\leq "),
	}, { condition = math }),
	s({ trig = "am", snippetType = "autosnippet" }, {
		t("\\setminus "),
	}, { condition = math }),
	s({ trig = "an", snippetType = "autosnippet" }, {
		t("\\neq"),
	}, { condition = math }),
	s({ trig = "at", snippetType = "autosnippet" }, {
		t("\\implies "),
	}, { condition = math }),
	s({ trig = "aR", snippetType = "autosnippet" }, {
		t("\\subset "),
	}, { condition = math }),
	s({ trig = "ar", snippetType = "autosnippet" }, {
		t("\\subseteq "),
	}, { condition = math }),
	s({ trig = "aS", snippetType = "autosnippet" }, {
		t("\\supset "),
	}, { condition = math }),
	s({ trig = "as", snippetType = "autosnippet" }, {
		t("\\supseteq "),
	}, { condition = math }),
	s({ trig = "au", snippetType = "autosnippet" }, {
		t("\\cup "),
	}, { condition = math }),
	s({ trig = "ax", snippetType = "autosnippet" }, {
		t("\\exists "),
	}, { condition = math }),
	s({ trig = "ay", snippetType = "autosnippet" }, {
		t("\\not "),
	}, { condition = math }),
	s({ trig = "az", snippetType = "autosnippet" }, {
		t("\\equiv "),
	}, { condition = math }),
}
