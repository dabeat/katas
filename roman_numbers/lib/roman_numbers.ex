defmodule RomanNumbers do
  @moduledoc """
  Documentation for RomanNumbers.
  """

  @doc """
  Hello world.

  ## Examples

      iex> RomanNumbers.convert(1494)
      "MCDXCIV"

  """

  @one {1, "I"}
  @four {4, "IV"}
  @five {5, "V"}
  @nine {9, "IX"}
  @ten {10, "X"}
  @fourty {40, "XL"}
  @fifty {50, "L"}
  @ninty {90, "XC"}
  @hundred {100, "C"}
  @fourhundred {400, "CD"}
  @fivehundred {500, "D"}
  @ninehundred {900, "CM"}
  @thousand {1000, "M"}

  @roman_numbers [
    @thousand,
    @ninehundred,
    @fivehundred,
    @fourhundred,
    @hundred,
    @ninty,
    @fifty,
    @fourty,
    @ten,
    @nine,
    @five,
    @four,
    @one
  ]

  def convert(arabic_number) do
    convert(arabic_number, @roman_numbers)
  end

  defp convert(arabic_number, base) do
    convert("", arabic_number, base)
  end

  defp convert(roman_number_acc, _arabic_number, []) do
    roman_number_acc
  end

  defp convert(
         roman_number_acc,
         arabic_number,
         base = [{arabic_base, roman_base} | rest]
       ) do
    case arabic_number >= arabic_base do
      true ->
        convert(
          Enum.join([roman_number_acc, roman_base], ""),
          arabic_number - arabic_base,
          base
        )

      false ->
        convert(roman_number_acc, arabic_number, rest)
    end
  end
end
