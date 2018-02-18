defmodule Fizzbuzz_Macros do
  defmacro is_fizz(n) do
    quote do: rem(unquote(n), 3) == 0  	
  end

   defmacro is_buzz(n) do
    quote do: rem(unquote(n), 5) == 0
  end

   defmacro is_fizzbuzz(n) do
    quote do: rem(unquote(n), 3) == 0 and rem(unquote(n), 5) == 0
  end
end
