defmodule Hasher do
  @moduledoc """
  Documentation for `Hasher`.
  """

  @doc """
  returns the sha256 on the request body
  """
  def digest(input) do
    :crypto.hash(:sha256, "#{input}")
    |> Base.encode16()
    |> String.downcase()
  end

  @doc """
  returns the hostname
  """
  def hostname do
    :net_adm.localhost()
  end
end
