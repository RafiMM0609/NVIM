# NVIM


## main step

1. open C:\Users\Admin\AppData\Local 
2. make new folder 'nvim'
3. clone this in that directory
4. clue ( init.lua file must store in this shape ==> nvim\init.lua )

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

## OOT WE CAN INSTALL POSTGRES LOCALLY IN OUR LAPTOP EASYLY USING DOCKER

its ffking easy bruh

just do it in your windows powershell

```
docker run -d -p 5432:5432 --name pdb -e POSTGRES_PASSWORD=pass123 postgres
```
1. open your container and do little setup


```
docker exec -it my-postgres bash
```

2. now you are inside your container and can access also create database 

```
root@cb9222b1f718:/# psql -U postgres
psql (10.3 (Debian 10.3-1.pgdg90+1))
Type "help" for help.
postgres=# CREATE DATABASE mytestdb;
CREATE DATABASE
postgres=#\q
```

4. finish him

5. additional bruhh

```
$ psql -h localhost -p 5432 -U postgres -W                       Password for user postgres:                       
psql (9.5.5, server 10.3 (Debian 10.3-1.pgdg90+1))                       WARNING: psql major version 9.5, server major version 10.                                Some psql features might not work.                       
Type "help" for help.                                               postgres=# \l
```


