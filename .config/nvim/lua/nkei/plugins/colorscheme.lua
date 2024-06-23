return {
	"folke/tokyonight.nvim",
	priority = 1000,
    config = function()

		require("tokyonight").setup({
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
			style = "night",
		})

		vim.cmd("colorscheme tokyonight")
	end,
}

-- return {
--     "catppuccin/nvim",
--     priority = 1500,
--     config = function()
--
--         require("catppuccin").setup({
--             flavour = "mocha",
--             color_overrides = {
--                 mocha = {
--                     base = "#12121a",
--                     mantle = "#12121a",
--                     crust = "#12121a",
--                 },
--             },
--             transparent_background = true,
--         })
--     vim.cmd.colorscheme("catppuccin-mocha")
--     vim.cmd("highlight TelescopeSelection cterm=bold gui=bold guifg=#a6e3a1 guibg=#181825")
--     end,
-- }
--
