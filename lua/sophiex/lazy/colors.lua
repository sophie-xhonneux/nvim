function ColorMyPencils(color)
        color = color or "rose-pine-moon"
        vim.cmd.colorscheme(color)
end

return {
        {
                "folke/tokyonight.nvim",
                lazy = false, -- make sure we load this during startup if it is your main colorscheme
                priority = 1000, -- make sure to load this before all the other start plugins
                config = function()
                        ColorMyPencils()
                end,
        },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = false,
                styles = {
                    italic = false,
                },
            })
        end
    },
}
