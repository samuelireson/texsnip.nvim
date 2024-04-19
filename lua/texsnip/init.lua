local M = {}

local ls = require("luasnip")
local allsnippets = require("texsnip.snippets")

M.setup = function()
	for index, lettersnippets in ipairs(allsnippets) do
		ls.add_snippets("tex", lettersnippets)
	end
end

return M
