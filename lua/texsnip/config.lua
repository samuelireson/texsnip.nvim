local M = {}

local config = {
	preamble_path = "~/your/preamble/path",
}

M.setup = function(user_config)
	user_config = user_config or {}

	vim.validate({
		config = { user_config, "table" },
	})

	config = vim.tbl_extend("force", config, user_config)
end

M.get = function(key)
	return config[key]
end

return M
