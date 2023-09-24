local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt

return ls.s(
	{ trig = "init" },
	fmt(
		[[
    use proconio::input;

    fn solve() {{
      {}
    }}

    fn main() {{
      input! {{ mut t: usize }}

      while t > 0 {{
        solve();
        t -= 1;
      }}
    }}
]],
		{
			ls.i(1),
		}
	)
)
