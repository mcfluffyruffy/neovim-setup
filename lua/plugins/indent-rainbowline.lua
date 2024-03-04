return {
	"lukas-reineke/indent-blankline.nvim",
    config = function()
		require("ibl").setup(require("indent-rainbowline").make_opts())
	end,
	dependencies = {
		"TheGLander/indent-rainbowline.nvim",
	},
}
