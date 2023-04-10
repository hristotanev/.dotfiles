local ls = require("luasnip")
local keymaps = require("hristotanev.common.keymaps")

local inoremap = keymaps.inoremap
local cnoremap = keymaps.cnoremap

ls.config.set_config({
	history = false,
	updateevents = "TextChanged,TextChangedI",
})

require("hristotanev.languages.snippets")

local function expand_or_jump()
	if ls.expand_or_jumpable() then
		ls.expand_or_jump()
	end
end

inoremap("<leader>e", expand_or_jump, { silent = true })
inoremap("<C-j>", "<Plug>luasnip-next-choice")
inoremap("<C-k>", "<Plug>luasnip-prev-choice")
cnoremap("<leader>e", expand_or_jump, { silent = true })
cnoremap("<C-j>", "<Plug>luasnip-next-choice")
cnoremap("<C-k>", "<Plug>luasnip-prev-choice")
