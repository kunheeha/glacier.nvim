local colours = require("glacier.colours")

local glacier = {}

glacier.normal = {
	a = { fg = colours.glacier1_gui, bg = colours.glacier9_gui },
	b = { fg = colours.glacier5_gui, bg = colours.glacier2_gui },
	c = { fg = colours.glacier4_gui, bg = colours.glacier1_gui },
}

glacier.insert = {
	a = { fg = colours.glacier1_gui, bg = colours.glacier4_gui },
	b = { fg = colours.glacier6_gui, bg = colours.glacier2_gui },
	y = {  fg = colours.glacier5_gui, bg = colours.glacier2_gui },
}

glacier.visual = {
	a = { fg = colours.glacier0_gui, bg = colours.glacier7_gui },
	b = { fg = colours.glacier4_gui, bg = colours.glacier2_gui },
	y = {  fg = colours.glacier5_gui, bg = colours.glacier2_gui },
}

glacier.replace = {
	a = { fg = colours.glacier0_gui, bg = colours.glacier11_gui },
	b = { fg = colours.glacier4_gui, bg = colours.glacier2_gui },
	y = {  fg = colours.glacier5_gui, bg = colours.glacier2_gui },
}

glacier.command = {
	a = { fg = colours.glacier0_gui, bg = colours.glacier15_gui, gui = "bold" },
	b = { fg = colours.glacier4_gui, bg = colours.glacier2_gui },
	y = {  fg = colours.glacier5_gui, bg = colours.glacier2_gui },
}

glacier.inactive = {
	a = { fg = colours.glacier4_gui, bg = colours.glacier0_gui, gui = "bold" },
	b = { fg = colours.glacier4_gui, bg = colours.glacier0_gui },
	c = { fg = colours.glacier4_gui, bg = colours.glacier1_gui },
}

return glacier
