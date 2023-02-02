local ls = require('luasnip')
local rep = require('luasnip.extras').rep
local fmt = require('luasnip.extras.fmt').fmt

local multinput = ls.sn(1, {
  ls.t({
    "int t;",
    "\tcin >> t;",
    "",
    "\twhile (t--) {",
    ""
  }),
  ls.t("\t\t"),
  ls.i(1),
  ls.t({"", "\t}"})
})

local fileinput = ls.sn(1, {
  ls.t("freopen(\"r\", \""),
  ls.i(1),
  ls.t({".in\", stdin);", ""}),
  ls.t("\tfreopen(\"w\", \""),
  rep(1),
  ls.t(".out\", stdout);")
})

return ls.s({ trig="init" }, fmt([[
  #include <bits/stdc++.h>
  #define ll long long
  using namespace std;

  int main() {{
    ios_base::sync_with_stdio(false);
    cin.tie(0);

    {}

    return 0;
  }}
]], {
  ls.c(1, {
    ls.t(nil),
    multinput,
    fileinput
  })
}))
