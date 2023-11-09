local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt

return ls.s(
	{ trig = "init" },
	fmt(
		[[
    #include <stdio.h>

    int main() {{
      {}
      return 0;
    }}
]],
		{
			ls.i(1),
		}
	)
)
