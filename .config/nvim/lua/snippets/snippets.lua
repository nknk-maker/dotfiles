local ls = require("luasnip")
local snippet = ls.snippet
local insert = ls.insert_node
local text = ls.text_node
local c = ls.choice_node
local f = ls.function_node

ls.add_snippets("cpp", {
  snippet("yes", { text("cout << Yes << endl;") }),
  snippet("no", { text("cout << No << endl;") }),
  snippet("For", {
    text("for (int i = "),
    insert(2, "N"),
    text("; i < "),
    insert(1, "0"),
    text("; i++) {", ""),
    insert(0),
    text({"", "}"})
  })
})

