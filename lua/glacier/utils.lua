local utils = {}
local glacier = require("glacier.theme")

-- Go trough the table and highlight the group with the color values
utils.highlight = function(group, color)
	local style = color.style and "gui=" .. color.style or "gui=NONE"
	local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
	local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
	local sp = color.sp and "guisp=" .. color.sp or ""

	local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

	vim.cmd(hl)
	if color.link then
		vim.cmd("highlight! link " .. group .. " " .. color.link)
	end
end

-- Only define glacier if it's the active colorscheme
function utils.onColorScheme()
	if vim.g.colors_name ~= "glacier" then
		vim.cmd([[autocmd! glacier]])
		vim.cmd([[augroup! glacier]])
	end
end

-- Change the background for the terminal, packer and qf windows
utils.contrast = function()
	vim.cmd([[augroup glacier]])
	vim.cmd([[  autocmd!]])
	vim.cmd([[  autocmd ColorScheme * lua require("glacier.utils").onColorScheme()]])
	vim.cmd([[  autocmd TermOpen * setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
	vim.cmd([[  autocmd FileType packer setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
	vim.cmd([[  autocmd FileType qf setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
	vim.cmd([[augroup end]])
end
-- Loads the colors from the dictionary Object (colorSet)
function utils.loadColorSet(colorSet)
	for group, colors in pairs(colorSet) do
		utils.highlight(group, colors)
	end
end
-- Load the theme
function utils.load()
	-- Set the theme environment
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	-- vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "glacier"

	-- load the most importaint parts of the theme
	local editor = glacier.loadEditor()
	local syntax = glacier.loadSyntax()
	local treesitter = glacier.loadTreeSitter()
	local filetypes = glacier.loadFiletypes()

	-- load editor highlights
	utils.loadColorSet(editor)

	-- load syntax highlights
	utils.loadColorSet(syntax)

	-- load treesitter highlights
	utils.loadColorSet(treesitter)

	-- load filetype-specific highlights
	utils.loadColorSet(filetypes)

	glacier.loadTerminal()

	-- imort tables for plugins and lsp
	local plugins = glacier.loadPlugins()
	local lsp = glacier.loadLSP()

	-- load plugin highlights
	utils.loadColorSet(plugins)

	-- load lsp highlights
	utils.loadColorSet(lsp)

	-- if contrast is enabled, apply it to sidebars and floating windows
	if vim.g.glacier_contrast == true then
		utils.contrast()
	end
end

return utils
