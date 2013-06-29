# pipe2eval

simple REPL inside vim

supports: python, php, coffee, mysql, mongodb, redis, sh, go, javascript, ruby, elixir ...

## demos

coffeescript

![coffeescript](https://github.com/zweifisch/pipe2eval/raw/master/demos/coffee.gif)

* [mysql](https://github.com/zweifisch/pipe2eval/raw/master/demos/mysql.gif)
* [mongodb](https://github.com/zweifisch/pipe2eval/raw/master/demos/mongodb.gif)

## install

via vundle
```vim
Bundle "zweifisch/pipe2eval"
```

tempfiles are put to `/dev/shm/` by default, `export PIP2EVAL_TMP_FILE_PATH` to
override

## usage

press `V<space>` to evaluate current line, `vip<space>` to evaluate a paragraph

to specify a diffrent filetype use the Pipe2 command `:Pipe2 redis`, `:Pipe2 mongo` ...

evaluate an empty line will clear the context

### specify a mysql connection

```sql
-- hostname localhost
-- username root
-- password secret
-- database test
```

### specify a mongodb connection

```javascript
// host localhost
// port 27017
// db test
```

mongodb commands

```javascript
//> dbs
//> collections
//> version
//> status
//> status mem
//> connections
//> session
```

### special commands for shell

evaluate commands on a remote maschine

```
#> set ssh dbserver1
uptime
```

end it
```
#> set ssh
```
