return {
    -- 他のプラグイン設定...

    {
        'L3MON4D3/LuaSnip',
        config = function()
            require('luasnip').setup {}
            require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets" })
        end
    },

    -- 他のプラグイン設定...
}

