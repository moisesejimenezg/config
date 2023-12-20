vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("scrooloose/nerdcommenter")
	use("tpope/vim-fugitive")
	use("christoomey/vim-tmux-navigator")
	use("rafi/awesome-vim-colorschemes")
	use("ryanoasis/vim-devicons")
	use("mhartington/formatter.nvim")
	use("lukas-reineke/indent-blankline.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use("JohnnyMorganz/StyLua")
	use("neovim/nvim-lspconfig")
	use("nvim-tree/nvim-tree.lua")
	use("nvim-lualine/lualine.nvim")
	use("nikvdp/neomux")
	use("kdheepak/tabline.nvim")
	use("lewis6991/gitsigns.nvim")
	use("phaazon/hop.nvim")
	use("karb94/neoscroll.nvim")
	use("ms-jpq/coq_nvim")
	use("dcampos/nvim-snippy")
	use("dhruvasagar/vim-table-mode")
	use("folke/trouble.nvim")
	use("nvim-tree/nvim-web-devicons")
	--use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
end)
