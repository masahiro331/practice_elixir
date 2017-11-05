sum = fn (a,b) -> a + b end
IO.puts inspect(sum)
IO.puts inspect(sum.(1,2))
list_concat = fn a,b -> a ++ b end
IO.puts inspect(list_concat.([:a, :b], [:c, :d]))
pair_tuple_to_list = fn {a,b} -> [a,b] end
IO.puts inspect(pair_tuple_to_list.({1234, 5678}))

handle_open = fn
  {:ok, file} -> "Read data: #{IO.read(file, :line)}"
  {_,  error} -> "Error: #{:file.format_error(error)}"
end
IO.puts handle_open.(File.open("./hello.exs"))
