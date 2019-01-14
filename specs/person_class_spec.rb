require("minitest/autorun")
require("minitest/rg")
require_relative("../student_class")

class TestStudentClass < Minitest::Test

  def test_get_student_name()
    student = Student.new("Robert", "G11")
    assert_equal("Robert", student.get_name())
  end

  def test_get_student_cohort()
    student = Student.new("Robert", "G11")
    assert_equal("G11", student.get_cohort())
  end

  def test_set_student_name()
    student = Student.new("Robert", "G11")
    student.set_name("John")
    assert_equal("John", student.get_name())
  end

  def test_set_student_cohort()
    student = Student.new("Robert", "G11")
    student.set_cohort("G12")
    assert_equal("G12", student.get_cohort())
  end

  def test_if_student_can_talk()
    student = Student.new("Robert", "G11")
    assert_equal("I can talk!", student.talk())
  end

  def test_favourite_language()
    student = Student.new("Robert", "G11")
    assert_equal("I love Ruby", student.say_favourite_language("Ruby"))
  end

end
