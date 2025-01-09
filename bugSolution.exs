```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce(list, [], fn x, acc ->
  if x == 3 do
    # Instead of exiting, add a flag to indicate termination or modify the accumulator
    [:terminated | acc] 
  else
    [x | acc]  
end)

IO.inspect(Enum.reverse(result))
```