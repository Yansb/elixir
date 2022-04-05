defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns how many odd numbers" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      response = ListFilter.call(list)

      expect_response = 3

      assert response == expect_response
    end
  end
end
