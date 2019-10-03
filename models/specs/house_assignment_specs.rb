require("minitest/autorun")
require_relative("../house_assignment")

class TestStudent < MiniTest::Test

  def setup
    options = {"id" => 1,
      "first_name" => "Harry",
      "last_name" => "Potter",
      "age"=> 14,
      "house" => "Gryffindor"}

    @student = Student.new(options)
  end

  def test_first_name
    result = @student.first_name
    assert_equal("Harry", result)
  end

  def test_last_name
    result = @student.last_name
    assert_equal("Potter", result)
  end

  def test_age
    result = @student.age
    assert_equal(14, result)
  end

  def test_house
    result = @student.house
    assert_equal("Gryffindor", result)
  end

end
