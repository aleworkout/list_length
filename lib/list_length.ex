defmodule ListLength do
  # Funções Privadas
  defp list_length([_head | tail], count) do
    count = count + 1
    list_length(tail, count)
  end

  defp list_length([], count), do: count

  defp list_length(elem, _count), do: "#{elem} não é uma lista. Passe uma lista"

  # Função Pública
  def call(list), do: list_length(list, 0)
end
