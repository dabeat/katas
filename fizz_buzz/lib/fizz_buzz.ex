defmodule FizzBuzz do
  @moduledoc """
  Documentation for FizzBuzz.
  """

  @doc """
  Hello world.

  ## Examples

      iex> FizzBuzz.list(1)      
      1
  """

  import Fizzbuzz_Macros
 
  @fizz "Fizz"
  @buzz "Buzz"

  def list(n) when n > 20, do: 'Upper threshold is 20'
  def list(n), do: list(n, [])

  def list(0, acc), do: Enum.map(acc, fn(n) -> IO.puts n end)      
  def list(n, acc), do: list(n - 1, [fizzfuzz(n) | acc])  

  defp fizzfuzz(n) when is_fizzbuzz(n), do: @fizz <> @buzz   
  defp fizzfuzz(n) when is_fizz(n), do: @fizz      
  defp fizzfuzz(n) when is_buzz(n), do: @buzz 
  defp fizzfuzz(n), do: n
end
