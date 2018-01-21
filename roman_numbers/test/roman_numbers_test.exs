defmodule RomanNumbersTest do
  use ExUnit.Case
  doctest RomanNumbers

  test "should return 'I' when 1 is provided" do
    assert RomanNumbers.convert(1) == "I"
  end

  test "should return 'II' when 2 is provided" do
    assert RomanNumbers.convert(2) == "II"
  end

  test "should return 'III' when 3 is provided" do
    assert RomanNumbers.convert(3) == "III"
  end

  test "should return 'IV' when 4 is provided" do
    assert RomanNumbers.convert(4) == "IV"
  end

  test "should return 'V' when 5 is provided" do
    assert RomanNumbers.convert(5) == "V"
  end

  test "should return 'VI' when 6 is provided" do
    assert RomanNumbers.convert(6) == "VI"
  end

  test "should return 'VII' when 7 is provided" do
    assert RomanNumbers.convert(7) == "VII"
  end

  test "should return 'VIII' when 8 is provided" do
    assert RomanNumbers.convert(8) == "VIII"
  end

  test "should return 'X' when 10 is provided" do
    assert RomanNumbers.convert(10) == "X"
  end

  test "should return 'XI' when 11 is provided" do
    assert RomanNumbers.convert(11) == "XI"
  end

  test "should return 'XII' when 12 is provided" do
    assert RomanNumbers.convert(12) == "XII"
  end

  test "should return 'XIII' when 13 is provided" do
    assert RomanNumbers.convert(13) == "XIII"
  end

  test "should return 'XV' when 15 is provided" do
    assert RomanNumbers.convert(15) == "XV"
  end

  test "should return 'XVI' when 16 is provided" do
    assert RomanNumbers.convert(16) == "XVI"
  end

  test "should return 'XVII' when 17 is provided" do
    assert RomanNumbers.convert(17) == "XVII"
  end

  test "should return 'XVIII' when 18 is provided" do
    assert RomanNumbers.convert(18) == "XVIII"
  end

  test "should return 'XX' when 20 is provided" do
    assert RomanNumbers.convert(20) == "XX"
  end

  test "should return 'XXX' when 30 is provided" do
    assert RomanNumbers.convert(30) == "XXX"
  end

  test "should return 'XXXVII' when 37 is provided" do
    assert RomanNumbers.convert(37) == "XXXVII"
  end

  test "should return 'LXXIII' when 73 is provided" do
    assert RomanNumbers.convert(73) == "LXXIII"
  end

  test "should return 'CCLXVIII' when 268 is provided" do
    assert RomanNumbers.convert(268) == "CCLXVIII"
  end

  test "should return 'CCCXXI' when 321 is provided" do
    assert RomanNumbers.convert(321) == "CCCXXI"
  end

  test "should return 'MDCLXXXII' when 1682 is provided" do
    assert RomanNumbers.convert(1682) == "MDCLXXXII"
  end

  test "should return 'MCDXCIV' when 1494 is provided" do
    assert RomanNumbers.convert(1494) == "MCDXCIV"
  end

  test "should return 'MMMCDLXIX' when 3469 is provided" do
    assert RomanNumbers.convert(3469) == "MMMCDLXIX"
  end
end
