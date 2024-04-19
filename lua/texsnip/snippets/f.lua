local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local math = function()
	return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {
	s({ trig = "f(%a)", regTrig = true, snippetType = "autosnippet" }, {
		f(function(_, snip)
			return "\\mathfrak{" .. string.upper(snip.captures[1]) .. "}"
		end, {}),
	}, { condition = math }),
}
