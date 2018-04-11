defmodule Catch do
  def start(n) do
    try do
      incite(n)
    catch
      :exit, code -> "#{inspect code}"
      :throw, value -> "#{inspect value}"
      what, value -> "#{inspect what} #{inspect value}"
    end
  end

  defp incite(1) do
    exit(:something_bad_happend)
  end

  defp incite(2) do
    throw {:animal, "str"}
  end

  defp incite(3) do
    :erlang.error "NO"
  end
end


