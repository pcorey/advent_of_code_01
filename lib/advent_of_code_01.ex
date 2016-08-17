defmodule AdventOfCode01 do

  @doc """
  Determines which floor Santa will end up on.

  ## Examples

  iex> AdventOfCode01.which_floor "("
  1

  iex> AdventOfCode01.which_floor "(("
  2

  """
  def which_floor(directions) do
    directions
    |> String.split("", trim: true)
    |> Enum.map(&handle_direction/1)
    |> Enum.sum()
  end

  defp handle_direction("("), do: 1

end
