defmodule ExEuler.Problem001 do
  @moduledoc """
  Problem 1: Multiples of 3 and 5

  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.
  """

  @doc """
  iex> ExEuler.Problem001.solve
  233168
  """
  def solve(n \\ 999) do
    1..n
    |> Enum.filter(fn(n) -> rem(n, 5) == 0 or rem(n, 3) == 0 end)
    |> Enum.reduce(0, fn(x, acc) -> x + acc end)
  end

  defp filter(num) do

  end
end
