# practice_elixir

## memo
&演算子は、それ以降の式を関数に変換する. 
- example
```
n = &(&1 + 1)
n = &(IO.puts(&1))
n = &{ div(&1,&2), rem(&1,&2) }
n.()
```
