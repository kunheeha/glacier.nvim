-- Colorscheme name:    glacier.nvim
-- Description:         Fork of shaunsingh/nord.nvim, with different colour palette
-- Author:              https://github.com/kunheeha

local utils = require("glacier.utils")

local bufferline = require("bufferline.theme")

-- Load the theme
local set = function()
	utils.load()
end

return { set = set, bufferline = bufferline }
