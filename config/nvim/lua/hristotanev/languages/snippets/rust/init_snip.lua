local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt

return ls.s(
	{ trig = "init" },
	fmt(
		[[
    use std::{{fmt::Debug, io, str::FromStr}};

    struct Input;

    #[allow(dead_code)]
    impl Input {{
      fn read_line() -> String {{
        let mut line = String::new();
        io::stdin().read_line(&mut line).expect("error");
        line
      }}

      fn parse_line<T: FromStr>(line: String) -> Vec<T>
      where
        <T as FromStr>::Err: Debug,
      {{
        line
          .trim()
          .split_whitespace()
          .map(|v| v.parse::<T>().unwrap())
          .collect::<Vec<T>>()
      }}

      fn read<T: FromStr + Copy>() -> T
      where
        <T as FromStr>::Err: Debug,
      {{
        let line = Input::read_line();
        let line = Input::parse_line::<T>(line);
        *line.iter().next().unwrap()
      }}

      fn read_coll<T: FromStr>(n: &usize) -> Vec<T>
      where
        <T as FromStr>::Err: Debug,
      {{
        let line = Input::read_line();
        let mut collection = Input::parse_line::<T>(line);

        if collection.len() > *n {{
          return collection.drain(..(*n)).collect::<Vec<T>>();
        }}

        collection
      }}
    }}

    fn solve() {{
      {}
    }}

    fn main() {{
      let mut t = Input::read::<u32>();

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
