defmodule RunLengthEncodingTest do
  use ExUnit.Case
  doctest RunLengthEncoding

  test "should return '[]' when '[]' is provided" do
    assert RunLengthEncoding.encode([]) == []
  end

  test "should return '[1]' when '[1]' is provided" do
    assert RunLengthEncoding.encode([1]) == [1]
  end

  test "should return '[1, 2]' when '[1, 2]' is provided" do
    assert RunLengthEncoding.encode([1, 2]) == [1, 2]
  end

  test "should return '[1, 4, 2]' when '[1, 4, 2]' is provided" do
    assert RunLengthEncoding.encode([1, 4, 2]) == [1, 4, 2]
  end

  test "should return '[{1, 2}]' when '[1, 1]' is provided" do
    assert RunLengthEncoding.encode([1, 1]) == [{1, 2}]
  end

  test "should return '[{1, 3}]' when '[1, 1, 1]' is provided" do
    assert RunLengthEncoding.encode([1, 1, 1]) == [{1, 3}]
  end

  test "should return '[1, {2, 3}, 3, {4, 2}, 5, {6, 4}, 1]' when '[[1, 2, 2, 2, 3, 4, 4, 5, 6, 6, 6, 6, 1]' is provided" do
    assert RunLengthEncoding.encode([1, 2, 2, 2, 3, 4, 4, 5, 6, 6, 6, 6, 1]) == [
             1,
             {2, 3},
             3,
             {4, 2},
             5,
             {6, 4},
             1
           ]
  end
end
