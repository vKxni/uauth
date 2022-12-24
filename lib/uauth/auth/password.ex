defmodule Uauth.Auth.Password do
  @moduledoc """
  A module that generates a custom password for the user (8+ length)
  """

  @spec generate_password() :: String.t()
  def generate_password() do
    length = 16
    :crypto.strong_rand_bytes(length) |> Base.encode64() |> binary_part(0, length)
  end

  @spec random_length() :: integer()
  def random_length() do
    :crypto.strong_rand_bytes(1)
    |> Base.encode16()
    |> binary_part(0, 2)
    |> String.to_integer(16)
    |> rem(24)
    |> Kernel.+(8)
  end
end
