local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "
require('lazy').setup({

    {
        'nvim-telescope/telescope.nvim',
        version = '0.1.1',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },

    'windwp/nvim-ts-autotag',
    {
        'folke/tokyonight.nvim',
        name = 'tokyonight',
        config = function()
            require("tokyonight").setup()
            vim.cmd('colorscheme tokyonight')
        end
    },
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        opts = {}
    },
    'nvim-treesitter/nvim-treesitter',
    'nvim-treesitter/playground',
    'theprimeagen/harpoon',
    'mbbill/undotree',
    'tpope/vim-fugitive',
    'eandrju/cellular-automaton.nvim',
    'terrortylor/nvim-comment',
    'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim',
    'tpope/vim-surround',
    'github/copilot.vim',

    { 'echasnovski/mini.nvim', version = false },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {                            -- Optional
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required

            { 'hrsh7th/cmp-buffer' },

            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lua' },

            { 'rafamadriz/friendly-snippets' }
        }
    },
    'jose-elias-alvarez/null-ls.nvim',
    'MunifTanjim/prettier.nvim',
})


require "brian"
