
# kunheeha/glacier.nvim

## fork of [shaunsingh/glacier.nvim](https://github.com/shaunsingh/glacier.nvim) with a brighter colour palette

## Features

glacier.nvim is meant to be a modern colorscheme written in lua for NeoVim that supports a lot of the new features
added to NeoVim like built-in LSP and [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)

+ Supported plugins:
  + [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
  + [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
  + [Lsp Saga](https://github.com/glepnir/lspsaga.nvim)
  + [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
  + [Git Gutter](https://github.com/airblade/vim-gitgutter)
  + [git-messenger](https://github.com/rhysd/git-messenger.vim)
  + [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
  + [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
  + [Nvim-Tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
  + [NERDTree](https://github.com/preservim/nerdtree)
  + [vim-which-key](https://github.com/liuchengxu/vim-which-key)
  + [Indent-Blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
  + [Dashboard](https://github.com/glepnir/dashboard-nvim)
  + [BufferLine](https://github.com/akinsho/nvim-bufferline.lua)
  + [Lualine](https://github.com/hoob3rt/lualine.nvim)
  + [Neogit](https://github.com/TimUntersberger/neogit)
  + [vim-sneak](https://github.com/justinmk/vim-sneak)
  + [lightspeed.nvim](https://github.com/ggandor/lightspeed.nvim)
  + [barbar.nvim](https://github.com/romgrk/barbar.nvim)
  + [nvim-notify](https://github.com/rcarriga/nvim-notify)
  + [leap.nvim](https://github.com/ggandor/leap.nvim)
  + [mini.nvim](https://github.com/echasnovski/mini.nvim)
  + [aerial.nvim](https://github.com/stevearc/aerial.nvim)
  + [headlines.nvim](https://github.com/lukas-reineke/headlines.nvim)

+ Ability to change background on sidebar-like windows like Nvim-Tree, Packer, terminal etc.

## ⚡️ Requirements

+ Neovim >= 0.5.0

## 🌙 Installation

Install via your favourite package manager:

```vim
" If you are using Vim-Plug
Plug 'kunheeha/glacier.nvim'
```

```lua
-- If you are using Packer
use 'kunheeha/glacier.nvim'
```

## 🌓 Usage

Enable the colorscheme:

```vim
"Vim-Script:
colorscheme glacier
```

```lua
--Lua:
vim.cmd[[colorscheme glacier]]
```

To enable the `glacier` theme for `Lualine`, simply specify it in your lualine settings:

```lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'glacier'
    -- ... your lualine config
  }
}
```

## ⚙️ Configuration

| Option                              | Default     | Description                                                                                                                                                     |
| ----------------------------------- | ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| glacier_contrast                   | `false`      | Make sidebars and popup menus like nvim-tree and telescope have a different background                                                                                       |
| glacier_borders                    | `false`     | Enable the border between verticaly split windows visable
| glacier_disable_background         | `false`     | Disable the setting of background color so that NeoVim can use your terminal background
| glacier_cursorline_transparent     | `false`     | Set the cursorline transparent/visible
| glacier_enable_sidebar_background  | `false`     | Re-enables the background of the sidebar if you disabled the background of everything
| glacier_italic                     | `true`      | enables/disables italics
| glacier_uniform_diff_background    | `false`     | enables/disables colorful backgrounds when used in *diff* mode
| glacier_bold                       | `true`      | enables/disables bold

```lua
-- Example config in lua
vim.g.glacier_contrast = true
vim.g.glacier_borders = false
vim.g.glacier_disable_background = false
vim.g.glacier_italic = false
vim.g.glacier_uniform_diff_background = true
vim.g.glacier_bold = false

-- Load the colorscheme
require('glacier').set()
```

```vim
" Example config in Vim-Script
let g:glacier_contrast = v:true
let g:glacier_borders = v:false
let g:glacier_disable_background = v:false
let g:glacier_italic = v:false
let g:glacier_uniform_diff_background = v:true
let g:glacier_bold = v:false

" Load the colorscheme
colorscheme glacier
```

### headlines support

To support [headlines]("https://github.com/lukas-reineke/headlines.nvim"), you should add these code to your settings:

```lua
require("headlines").setup({
    markdown = {
        headline_highlights = {
            "Headline1",
            "Headline2",
            "Headline3",
            "Headline4",
            "Headline5",
            "Headline6",
        },
        codeblock_highlight = "CodeBlock",
        dash_highlight = "Dash",
        quote_highlight = "Quote",
    },
})

```

It should look like this

![26B3E551-FD57-458C-BE85-C8945BCE37DF](https://user-images.githubusercontent.com/61075605/197376829-43c30172-2528-47a0-b23f-ab63f73c0851.png)

### bufferline support

To support [BufferLine](https://github.com/akinsho/nvim-bufferline.lua), you can add these code to your settings:

```lua
local highlights = require("glacier").bufferline.highlights({
    italic = true,
    bold = true,
})

require("bufferline").setup({
    options = {
        separator_style = "thin",
    },
    highlights = highlights,
})

```

It should look like this

<img width="891" alt="image" src="https://user-images.githubusercontent.com/61075605/189152634-6d309903-90e6-4ffe-a7bc-f65b19eb4c43.png">
or you want to use slant separator

```lua
local highlights = require("glacier").bufferline.highlights({
    italic = true,
    bold = true,
    fill = "#181c24"
})

require("bufferline").setup({
    options = {
        separator_style = "slant",
    },
    highlights = highlights,
})

```


<img width="866" alt="image" src="https://user-images.githubusercontent.com/61075605/189151983-0cbf1f13-e62b-4b01-b6ce-a1c00a5f8ef3.png">

The default setting of bufferline highlights is

```lua
{
    fill = colors.glacier0_gui,
    indicator = colors.glacier9_gui,
    bg = colors.glacier0_gui,
    buffer_bg = colors.glacier0_gui,
    buffer_bg_selected = colors.glacier1_gui,
    buffer_bg_visible = "#2A2F3A",
    bold = true,
    italic = true,
}
```
