defmodule ExEuler.Problem003 do
  require Integer

  @moduledoc """
  Problem 3:

  The prime factors of 13195 are 5, 7, 13 and 29.

  What is the largest prime factor of the number 600851475143 ?
  """

  @doc """
  iex> ExEuler.Problem003.solve(13195)
  29

  iex> ExEuler.Problem003.solve
  6857
  """
  def solve(n \\ 600851475143) do
    Stream.iterate(1, &(&1 + 1))
    |> Stream.filter(&is_prime/1)
    |> Enum.take_while(&(&1 < round(:math.sqrt(n))))
    |> Enum.filter(fn(x) -> rem(n, x) == 0 end)
    |> List.last
  end

  def is_prime(x), do: (2..x |> Enum.filter(fn a -> rem(x, a) == 0 end) |> length()) == 1
end
