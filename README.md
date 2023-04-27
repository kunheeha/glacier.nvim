
# kunheeha/glacier.nvim

## fork of [shaunsingh/glacier.nvim](https://github.com/shaunsingh/glacier.nvim) with a brighter colour palette

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

