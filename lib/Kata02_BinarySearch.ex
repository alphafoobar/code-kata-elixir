defmodule Kata02_BinarySearch do
  @moduledoc """
  Documentation for Kata02_BinarySearch.
  """

  @doc """
  Binary Search.

  ## Examples

      iex> Kata02_BinarySearch.chop(1, [3])
      nil

  """
  def chop(key, array) do
    if Enum.empty?(array) do
      nil
    else
      chop_worker(key, array, 0, length(array))
    end
  end

  def chop_worker(key, array, low, high) do
    remaining = high - low

    if remaining == 0 do
      nil
    else
      point = low + div(remaining, 2)
      value = Enum.at(array, point)

      cond do
        value == key ->
          point

        value > key ->
          chop_worker(key, array, low, point)

        true ->
          chop_worker(key, array, point + 1, high)
      end
    end
  end
end
