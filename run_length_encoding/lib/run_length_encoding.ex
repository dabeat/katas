defmodule RunLengthEncoding do
  @moduledoc """
  Documentation for RunLengthEncoding.
  """

  @doc """
  Hello world.

  ## Examples

      iex> RunLengthEncoding.encode([1])
      [1]

  """

  @second_occurrence 2

  def encode(data), do: encode(data, [])

  defp encode([], acc), do: Enum.reverse(acc)
  defp encode(_data = [value | tail], _acc = []), do: encode(tail, [value])

  defp encode(_data = [value | tail], _acc = [{value, occurrences} | acc_tail]) do
    encode(tail, [{value, occurrences + 1} | acc_tail])
  end

  defp encode(_data = [value | tail], _acc = [value | acc_tail]) do
    encode(tail, [{value, @second_occurrence} | acc_tail])
  end

  defp encode(_data = [head | tail], acc = [_value | _acc_tail]) do
    encode(tail, [head | acc])
  end
end
