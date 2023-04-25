local palette = require("glacier.palette")

local dark_colours = {
	glacier0_gui = palette.black, -- glacier0 in palette
	glacier1_gui = palette.dark_gray, -- glacier1 in palette
	glacier2_gui = palette.gray, -- glacier2 in palette
	glacier3_gui = palette.light_gray, -- glacier3 in palette
	glacier3_gui_bright = palette.light_gray_bright, -- out of palette
	glacier4_gui = palette.darkest_white, -- glacier4 in palette
	glacier5_gui = palette.darker_white, -- glacier5 in palette
	glacier6_gui = palette.white, -- glacier6 in palette
	glacier7_gui = palette.teal, -- glacier7 in palette
	glacier8_gui = palette.off_blue, -- glacier8 in palette
	glacier9_gui = palette.glacier, -- glacier9 in palette
	glacier10_gui = palette.blue, -- glacier10 in palette
	glacier11_gui = palette.red, -- glacier11 in palette
	glacier12_gui = palette.orange, -- glacier12 in palette
	glacier13_gui = palette.yellow, -- glacier13 in palette
	glacier14_gui = palette.green, -- glacier14 in palette
	glacier15_gui = palette.purple, -- glacier15 in palette
	none = "NONE",
}

local light_colours = {
	glacier0_gui = palette.white, -- glacier0 in palette
	glacier1_gui = palette.darker_white, -- glacier1 in palette
	glacier2_gui = palette.darkest_white, -- glacier2 in palette
	glacier3_gui = palette.light_gray, -- glacier3 in palette
	glacier3_gui_bright = palette.light_gray_bright, -- out of palette
	glacier4_gui = palette.gray, -- glacier4 in palette
	glacier5_gui = palette.dark_gray, -- glacier5 in palette
	glacier6_gui = palette.black, -- glacier6 in palette

	-- Same colours across light and dark from here down...
	glacier7_gui = palette.teal, -- glacier7 in palette
	glacier8_gui = palette.off_blue, -- glacier8 in palette
	glacier9_gui = palette.glacier, -- glacier9 in palette
	glacier10_gui = palette.blue, -- glacier10 in palette
	glacier11_gui = palette.red, -- glacier11 in palette
	glacier12_gui = palette.orange, -- glacier12 in palette
	glacier13_gui = palette.yellow, -- glacier13 in palette
	glacier14_gui = palette.green, -- glacier14 in palette
	glacier15_gui = palette.purple, -- glacier15 in palette
	none = "NONE",
}

local glacier = (vim.o.background == "dark") and dark_colours or light_colours

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.glacier_contrast then
	glacier.sidebar = glacier.glacier1_gui
	glacier.float = glacier.glacier1_gui
else
	glacier.sidebar = glacier.glacier0_gui
	glacier.float = glacier.glacier0_gui
end

if vim.g.glacier_cursorline_transparent then
	glacier.cursorlinefg = glacier.glacier0_gui
else
	glacier.cursorlinefg = glacier.glacier1_gui
end

return glacier
