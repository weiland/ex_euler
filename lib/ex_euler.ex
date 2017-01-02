defmodule ExEuler do
  @moduledoc """
  Documentation for ExEuler.
  """

  @doc """
  Show the results in the Terminal.
  """
  def run do
    IO.puts "Problem 001"
    IO.inspect ExEuler.Problem001.solve
    IO.puts "Problem 002"
    IO.inspect ExEuler.Problem002.solve
  end
end
