defmodule Algorithms.Sort do
  alias __MODULE__

  @moduledoc """
  Sorting algorithms
  """

  @doc """
  Quick sort

  ## Examples

      iex> Algorithms.Sort.quick_sort([3,4,1])
      [1,3,4]

  """
  def quick_sort(array) when length(array) <= 1, do: array

  def quick_sort(array) do
    [pivot | tail] = array
    left = Enum.filter(tail, fn n -> n <= pivot end)
    right = Enum.filter(tail, fn n -> n > pivot end)
    Sort.quick_sort(left) ++ [pivot] ++ Sort.quick_sort(right)
  end
end
