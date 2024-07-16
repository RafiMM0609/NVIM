# NVIM

## STEP THAT WE MUST OBEY (IF WE USE WINDOWS)
1. install zig you can follow this link [zig](https://ziglang.org/) 

```
winget install zig.zig
```

2. you need to have node or something (the main is you can run npm in your terminal)
3. install lua you can do this script in your windows terminal (powershell or anything i dont care)


```
winget install LuaLS.lua-language-server
```

### IF YOU INSTALL SOME GOOD PACKAGE FROM MASON (probbably using MasonInstall)
1. ensure that package have been installed successfully
2. then open your lsp-config.lua and add this add the similiar code (below not above)

```
    lspconfig.<your package name>.setup({
    capabilities = capabilities,
    filetypes = {"python"},
    }),
```
3. then save it ( press => 'esc' : wa 'enter' ) 
4. then quit ( press => 'esc' : q )


