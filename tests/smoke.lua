local root = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":p:h:h")
vim.opt.runtimepath:prepend(root)

local function rgb(hex)
	return tonumber(hex:sub(2), 16)
end
local expected = {
	arctic = { bg = "#181A1F", fg = "#ABB2BF", red = "#FC5D7C" },
	sunset = { bg = "#131313", fg = "#F7F1FF", red = "#FC618D" },
}

for _, variant in ipairs({ "arctic", "sunset", "arctic" }) do
	vim.cmd.colorscheme("pirokai-" .. variant)
	assert(vim.g.colors_name == "pirokai-" .. variant)
	local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
	assert(normal.bg == rgb(expected[variant].bg) and normal.fg == rgb(expected[variant].fg))
	local comment = vim.api.nvim_get_hl(0, { name = "Comment" })
	assert(comment.italic == true)
	local keyword = vim.api.nvim_get_hl(0, { name = "Keyword" })
	assert(keyword.fg == rgb(expected[variant].red))
	assert(vim.api.nvim_get_hl(0, { name = "@function", link = true }).link == "Function")
	assert(vim.g.terminal_color_1 == expected[variant].red)
	local parameter = vim.api.nvim_get_hl(0, { name = "@variable.parameter" })
	assert(parameter.italic == true)
	local theme = require("lualine.themes.pirokai-" .. variant)
	assert(theme.normal.a.bg == require("pirokai").palettes[variant].cyan)
end

print("Pirokai smoke test passed")
vim.cmd.quit()
