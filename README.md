## demo

TBD

## install

download and chmod

`vimrc`
```vim
au FileType python     vm <buffer> <space> :!pipe2eval python<CR>
au FileType php        vm <buffer> <space> :!pipe2eval php<CR>
au FileType coffee     vm <buffer> <space> :!pipe2eval coffee<CR>
au FileType javascript vm <buffer> <space> :!pipe2eval javascript<CR>
au FileType ruby       vm <buffer> <space> :!pipe2eval ruby<CR>
au FileType perl       vm <buffer> <space> :!pipe2eval perl<CR>
au FileType go         vm <buffer> <space> :!pipe2eval go<CR>
au FileType sql        vm <buffer> <space> :!pipe2eval sql<CR>
au FileType mysql      vm <buffer> <space> :!pipe2eval sql<CR>
au FileType vimwiki    vm <buffer> <space> :!pipe2eval bash<CR>
au FileType sh         vm <buffer> <space> :!pipe2eval bash<CR>
au FileType vo_base    vm <buffer> <space> :!pipe2eval bash<CR>
au BufRead *.mongo     vm <buffer> <space> :!pipe2eval mongo<CR>

au FileType markdown   vm <buffer> <space> :!pipe2eval markdown<CR>
au FileType json       vm <buffer> <space> :!python -mjson.tool<CR>
au FileType xml        vm <buffer> <space> :!pipe2eval xml<CR>
au BufRead *.html      vm <buffer> <space> :!html2text<CR>
```

tmpfiles are put to `/dev/shm/` by default, `export PIP2EVAL_TMP_FILE_PATH` to
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

### mongo db connection

TBD
