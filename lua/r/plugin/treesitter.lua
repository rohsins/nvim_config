return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    main = 'nvim-treesitter.configs',
    opts = {
	ensure_installed = { 'bash', 'c', 'cpp', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
	auto_install = true,
	highlight = {
	    enable = true,
	    additional_vim_regex_highlighting = {},
	},
	indent = { enable = true, disable = {} },
    }
}

