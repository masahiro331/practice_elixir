defmodule Greeter do
  def for(name, greeting) do 
    fn 
      (^name) -> "#{greeting} #{name}"
      (_)     -> "I dont know you" 
    end
  end
end

mr_valim = Greeter.for("John", "Doe")
IO.puts mr_valim.("John")
