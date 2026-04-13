vim.api.nvim_create_user_command("FindHighlightColor", function(opts)
	local hex = opts.args:lower()
	if not hex:match("^#%x%x%x%x%x%x$") then
		print("❌ Используй формат #rrggbb")
		return
	end

	local color_val = tonumber(hex:sub(2), 16)
	local found = {}

	for name, _ in pairs(vim.api.nvim_get_hl(0, {})) do
		local hl = vim.api.nvim_get_hl(0, { name = name })
		local fg = hl.fg and string.format("#%06x", hl.fg):lower() or nil
		local bg = hl.bg and string.format("#%06x", hl.bg):lower() or nil
		if fg == hex or bg == hex then
			table.insert(found,
				string.format("%s  %s%s", name, fg and ("fg=" .. fg) or "", bg and (" bg=" .. bg) or ""))
		end
	end

	if #found == 0 then
		print("🕳️ Ничего не найдено для " .. hex)
	else
		print("🎨 Highlight-группы с цветом " .. hex .. ":")
		for _, line in ipairs(found) do
			print("  " .. line)
		end
	end
end, {
	nargs = 1,
	complete = function()
		return { "#1f2332", "#1c1c1c", "#ffffff", "#000000" }
	end,
	desc = "Найти все highlight-группы с заданным HEX-цветом",
})
