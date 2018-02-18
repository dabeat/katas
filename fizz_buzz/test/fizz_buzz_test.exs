defmodule FizzBuzzTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  test "should return warning if upper limit is greater than 20" do
    assert FizzBuzz.list(23) == 'Upper threshold is 20'
  end

  test "should return empty string if zero is provided" do
    fun = fn ->
      FizzBuzz.list(0)
    end

    assert capture_io(fun) == ""
  end

  test "should return fizz buzz list if equal or lower than 20" do
    fun = fn ->
      FizzBuzz.list(20)
    end

    assert capture_io(fun) ==
             "1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\n13\n14\nFizzBuzz\n16\n17\nFizz\n19\nBuzz\n"
  end
end
