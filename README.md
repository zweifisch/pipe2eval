# pipe2eval

simple REPL inside vim

## demos

coffeescript

![coffeescript](https://github.com/zweifisch/pipe2eval/raw/master/demos/coffee.gif)

* [mysql](https://github.com/zweifisch/pipe2eval/raw/master/demos/mysql.gif)
* [mongodb](https://github.com/zweifisch/pipe2eval/raw/master/demos/mongodb.gif)

## install

[download](https://raw.github.com/zweifisch/pipe2eval/master/pipe2eval) and `chmod +x pip2eval`

inside `.vimrc`
```vim
au FileType python     vm <buffer> <space> :!pipe2eval python<CR>
au FileType php        vm <buffer> <space> :!pipe2eval php<CR>
au FileType coffee     vm <buffer> <space> :!pipe2eval coffee<CR>
au FileType javascript vm <buffer> <space> :!pipe2eval javascript<CR>
au FileType sql        vm <buffer> <space> :!pipe2eval sql<CR>
au FileType mysql      vm <buffer> <space> :!pipe2eval sql<CR>
au FileType vimwiki    vm <buffer> <space> :!pipe2eval bash<CR>
au FileType sh         vm <buffer> <space> :!pipe2eval bash<CR>
au FileType vo_base    vm <buffer> <space> :!pipe2eval bash<CR>
au BufRead *.mongo     vm <buffer> <space> :!pipe2eval mongo<CR>
```

tempfiles are put to `/dev/shm/` by default, `export PIP2EVAL_TMP_FILE_PATH` to
override

## usage

press `V<space>` to evaluate current line, `vip<space>` to evaluate a paragraph

send a empty line to clear context

### special commands for bash

evaluate commands on a remote maschine, to begin
```
#:set ssh remote-machine
```

to end it
```
#:set ssh
```

### specify a mysql connection

```sql
-- hostname localhost
-- username root
-- password secret
-- database test
```

