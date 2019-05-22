defmodule Kata02_BinarySearchTest do
  use ExUnit.Case
  doctest Kata02_BinarySearch

  test "1/2 is 0" do
    assert div(1, 2) == 0
  end

  test "A list value can be retrieved by index" do
    assert Enum.at([1, 3, 5], 1) == 3
  end

  test "empty list" do
    assert Kata02_BinarySearch.chop(1, []) == nil
  end

  test "list of one can find item" do
    assert Kata02_BinarySearch.chop(1, [1]) == 0
  end

  test "list of one cannot find item" do
    assert Kata02_BinarySearch.chop(3, [1]) == nil
  end

  test "list of three" do
    assert Kata02_BinarySearch.chop(1, [1, 3, 5]) == 0
    assert Kata02_BinarySearch.chop(3, [1, 3, 5]) == 1
    assert Kata02_BinarySearch.chop(5, [1, 3, 5]) == 2
  end

  test "list of three cannot find anything" do
    assert Kata02_BinarySearch.chop(0, [1, 3, 5]) == nil
    assert Kata02_BinarySearch.chop(2, [1, 3, 5]) == nil
    assert Kata02_BinarySearch.chop(4, [1, 3, 5]) == nil
    assert Kata02_BinarySearch.chop(6, [1, 3, 5]) == nil
  end

  test "list of four" do
    assert Kata02_BinarySearch.chop(1, [1, 3, 5, 7]) == 0
    assert Kata02_BinarySearch.chop(3, [1, 3, 5, 7]) == 1
    assert Kata02_BinarySearch.chop(5, [1, 3, 5, 7]) == 2
    assert Kata02_BinarySearch.chop(7, [1, 3, 5, 7]) == 3
  end

  test "list of four cannot find anything" do
    assert Kata02_BinarySearch.chop(0, [1, 3, 5, 7]) == nil
    assert Kata02_BinarySearch.chop(2, [1, 3, 5, 7]) == nil
    assert Kata02_BinarySearch.chop(4, [1, 3, 5, 7]) == nil
    assert Kata02_BinarySearch.chop(6, [1, 3, 5, 7]) == nil
    assert Kata02_BinarySearch.chop(8, [1, 3, 5, 7]) == nil
  end
end
