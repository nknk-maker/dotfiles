local ls = require("luasnip")
local s= ls.snippet
local i= ls.insert_node
local t= ls.text_node
local c = ls.choice_node
local f = ls.function_node

ls.add_snippets("cpp", {
  s("ye", { t({'cout << "Yes" << endl;', "return 0;"}) }),
  s("y", { t('cout << "Yes" << endl;') }),
  s("ne", { t({'cout << "No" << endl;', "return 0;"}) }),
  s("ne", { t('cout << "No" << endl;') }),
  s("f", {
    t("for (int i = 0; i < "),
    i(1, "N"),
    t({"; i++) {", ""}),
    i(0),
    t({"", "}"})
  }),
  s("cout", {
    t("cout << "),
    i(1),
    t("<< endl;")
  }),
})

