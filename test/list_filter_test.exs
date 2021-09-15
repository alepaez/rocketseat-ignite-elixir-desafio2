defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "return odd numbers count" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]
      assert ListFilter.call(list) == 3
    end

    test "handle not integer values as not odd" do
      list = ["1", "3", "6", "43,2", "banana", "6", "abc"]
      assert ListFilter.call(list) == 2
    end
  end

end
