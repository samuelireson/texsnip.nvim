# TexSnip.nvim
A collection of LuaSnip snippets for LaTeX.

## Demo
https://github.com/samuelireson/texsnip.nvim/assets/107627922/cfc4c485-1b2b-46d9-b267-1fadc0d77864

## Installation
Installation with lazy.nvim is as simple as,
```lua
{
    'samuelireson/texsnip.nvim',
    config = true
    dependencies = { 'L3MON4D3/luasnip' },
}
```

## Configuration
The collected snippets are mostly static, so there aren't many needed
configurations, but you can configure your preamble path as follows,
```lua
{
    'samuelireson/texsnip.nvim',
    config = function()
        require("texsnip").setup({
            preamble_path = '~/path/to/preamble'
        })
    end
    dependencies = { 'L3MON4D3/luasnip' },
}
```

## Contribution
PRs are welcomed! The aim is to automatically expand as many snippets as
possible based on the context of the `.tex` file. This project is all about
making LaTeX notes as easily, and quickly as possible.
