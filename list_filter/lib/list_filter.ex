defmodule ListFilter do
  def call(list) do
    filterList(list)
  end

  defp filterList(list) do
    numbers =
      Enum.filter(list, fn item ->
        Regex.match?(~r/^\d+$/, item)
      end)

    parsedNumbers =
      Enum.map(numbers, fn number ->
        Integer.parse(number) |> elem(0)
      end)

    oddNumbers = Enum.filter(parsedNumbers, fn i -> rem(i, 2) != 0 end)
    length(oddNumbers, 0)
  end

  defp length([], acc), do: acc

  defp length([_ | tail], acc) do
    acc = acc + 1
    length(tail, acc)
  end
end
