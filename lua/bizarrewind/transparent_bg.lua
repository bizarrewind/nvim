local function set_transparent_bg()
	local highlights = {
		NonText = { ctermbg = nil, guibg = nil },
		Normal = { guibg = nil, ctermbg = nil },
		NormalNC = { guibg = nil, ctermbg = nil },
		SignColumn = { ctermbg = nil, ctermfg = nil, guibg = nil },
		Pmenu = { ctermbg = nil, ctermfg = nil, guibg = nil },
		FloatBorder = { ctermbg = nil, ctermfg = nil, guibg = nil },
		NormalFloat = { ctermbg = nil, ctermfg = nil, guibg = nil },
		TabLine = { ctermbg = nil, ctermfg = nil, guibg = nil },
		NeoTreeNormal = { guibg = nil, ctermbg = nil },
		NeoTreeNormalNC = { guibg = nil, ctermbg = nil },
		NeoTreeCursorLine = { guibg = nil, ctermbg = nil },
		NeoTreeIndentMarker = { guibg = nil, ctermbg = nil },
		NeoTreeStatusLine = { guibg = nil, ctermbg = nil },
	}

	-- Apply the highlights
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

-- Call the function to apply transparency
set_transparent_bg()
