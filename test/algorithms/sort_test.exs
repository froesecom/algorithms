defmodule Algorithms.SortTest do
  use ExUnit.Case
  # doctest Algorithms.Sort

  test "returns the array if given an array of length 1" do
    assert Algorithms.Sort.quick_sort([2]) == [2]
  end

  test "sorts the array" do
    array = [12, 1, 14, 15, 100, 8]
    assert Algorithms.Sort.quick_sort(array) == Enum.sort(array)
  end
end
