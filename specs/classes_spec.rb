require("minitest/autorun")
require_relative("../classes")

class StudentTest < MiniTest::Test

  def test_name
    student = Student.new("Greg", "E22")
    assert_equal("Greg", student.name())
  end

  def test_cohort
    student = Student.new("Greg", "E22")
    assert_equal("E22", student.cohort)
  end

  def test_set_name
    student = Student.new("Greg", "E22")
    student.set_name("Tim")
    assert_equal("Tim", student.name())
  end

  def test_set_cohort
    student = Student.new("Greg", "E22")
    student.set_cohort("E10")
    assert_equal("E10", student.cohort())
  end

  def test_talk
    student = Student.new("Greg", "E22")
    student.talk()
    assert_equal("I can't talk", student.talk())
  end

  def test_say_favourite_language
    student = Student.new("Greg", "E22")
    assert_equal("My favourite language is Ruby", student.say_favourite_language("Ruby"))
  end


end
