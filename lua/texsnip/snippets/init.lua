local letters = { "a", "b", "c", "d", "e", "f", "g", "h", "l", "m", "n", "o", "q", "s", "t" }

local allsnippets = {}
for index, letter in ipairs(letters) do
	allsnippets[index] = require("texsnip.snippets." .. letter)
end

return allsnippets
