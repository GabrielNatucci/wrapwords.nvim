<h1 align="center"> Wrapwords with neovim </h1>

<div align="center">

[![Lua](https://img.shields.io/badge/Lua-blue.svg?style=for-the-badge&logo=lua)](http://www.lua.org)
[![Neovim](https://img.shields.io/badge/Neovim%200.5+-green.svg?style=for-the-badge&logo=neovim)](https://neovim.io)
</div>
<hr>

# WrapWords


The ideia behind this neovim plug-in is really simple. This plug-in wrap words with double quotes, single quotes or parentheses.

From this:
```
This is a text
```

To this:
```
'This is a text'
"This is a text"
(This is a text)
```

And I know that there must be a way to do exactly what this plug-in does with neovim alone.

But I've always wanted to code my own plug-in, and this is my attempt at that.

# How to use
To use this plug-in, you must select the text that you want to wrap in visual mode, and then, run one of the following possible commands:
```
:Wrapwordsdoublequotes
:Wrapwordssinglequotes
:Wrapwordssinglequotes
```

# Installation

With lazy.nvim:
```
return {
    {
        "GabrielNatucci/wrapwords.nvim",
        config = function()
            require('wrapwords').setup()
        end
    }
}
```


And that's bassicaly it.
Feel free to fork this project, or contribute to make it better.



