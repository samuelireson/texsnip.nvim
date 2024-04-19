local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local math = function()
	return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {
	s({ trig = "qb", snippetType = "autosnippet" }, {
		t("\\langle "),
		i(1),
		t(" | "),
	}, { condition = math }),
	s({ trig = "qB", snippetType = "autosnippet" }, {
		t("\\left\\langle "),
		i(1),
		t(" \\right| "),
	}, { condition = math }),
	s({ trig = "qc", snippetType = "autosnippet" }, {
		t("\\langle "),
		i(1),
		t(" | "),
		i(2),
		t(" \\rangle "),
	}, { condition = math }),
	s({ trig = "qC", snippetType = "autosnippet" }, {
		t("\\left\\langle "),
		i(1),
		t(" \\middle| "),
		i(2),
		t(" \\right\\rangle "),
	}, { condition = math }),
	s({ trig = "qk", snippetType = "autosnippet" }, {
		t("| "),
		i(1),
		t(" \\rangle "),
	}, { condition = math }),
	s({ trig = "qK", snippetType = "autosnippet" }, {
		t("\\left| "),
		i(1),
		t(" \\right\\rangle "),
	}, { condition = math }),
}
