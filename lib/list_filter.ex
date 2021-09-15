defmodule ListFilter do
  def call(list \\ [], count \\ 0)

  def call([head | tail], count) do
    case Integer.parse(head) do
      {number, ""} -> call(tail, count + (number |> rem(2)))
      _ -> call(tail, count)
    end
  end

  def call([], count) do
    count
  end
end
