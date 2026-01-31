local function formatted_diagnostic(diagnostic)
	return string.format(" • %s", diagnostic.message)
end

local formatted_suffix = function(diagnostic)
	return diagnostic.code and string.format(" [%s] ", diagnostic.code) or " "
end

vim.diagnostic.config({
	virtual_text = true,
	jump = {
		float = true,
	},
	float = {
		border = "rounded",
		severity_sort = true,
		header = "",
		format = formatted_diagnostic,
		prefix = "",
		suffix = formatted_suffix,
	},
})
