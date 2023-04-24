local ls = require("luasnip")

ls.add_snippets("cpp", {
	require("hristotanev.languages.snippets.cpp.init_snip"),
})

ls.add_snippets("rust", {
	require("hristotanev.languages.snippets.rust.init_snip"),
})
