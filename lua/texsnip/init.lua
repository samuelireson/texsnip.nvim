local ls = require("luasnip")
local config = require("texsnip.config")

local M = {}

M.setup = function(opts)
	config.setup(opts)

	local snippets = require("texsnip.snippets")
	for index, lettersnippets in ipairs(snippets) do
		ls.add_snippets("tex", lettersnippets)
	end
end

return M
