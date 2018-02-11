defmodule RomanNumbersTest do
  use ExUnit.Case
  use ExUnit.Parameterized

  doctest RomanNumbers

  test_with_params "should return expected roman number when arabic number is provided",
    fn (arabic_number, expected_roman_number) ->      
      assert RomanNumbers.convert(arabic_number) == expected_roman_number
    end do
      [
        "should return 'I' when 1 is provided": {1, "I"},
        "should return 'II' when 2 is provided": {2, "II"},
        "should return 'III' when 3 is provided": {3, "III"},
        "should return 'IV' when 4 is provided": {4, "IV"},
        "should return 'V' when 5 is provided": {5, "V"},
        "should return 'VII' when 7 is provided": {7, "VII"},
        "should return 'VIII' when 8 is provided": {8, "VIII"},
        "should return 'X' when 10 is provided": {10, "X"},
        "should return 'XI' when 11 is provided": {11, "XI"},
        "should return 'XII' when 12 is provided": {12, "XII"},
        "should return 'XIII' when 13 is provided": {13, "XIII"},
        "should return 'XV' when 15 is provided": {15, "XV"},
        "should return 'XVI' when 16 is provided": {16, "XVI"},
        "should return 'XVII' when 17 is provided": {17, "XVII"},
        "should return 'XVIII' when 18 is provided": {18, "XVIII"},
        "should return 'XX' when 20 is provided": {20, "XX"},
        "should return 'XXX' when 30 is provided": {30, "XXX"},
        "should return 'XXXVII' when 37 is provided": {37, "XXXVII"},
        "should return 'LXXIII' when 73 is provided": {73, "LXXIII"},
        "should return 'CCLXVIII' when 268 is provided": {268, "CCLXVIII"},
        "should return 'CCCXXI' when 321 is provided": {321, "CCCXXI"},
        "should return 'MDCLXXXII' when 1682 is provided": {1682, "MDCLXXXII"},
        "should return 'MCDXCIV' when 1494 is provided": {1494, "MCDXCIV"},
        "should return 'MMMCDLXIX' when 3469 is provided": {3469, "MMMCDLXIX"}
      ]
  end
end
