require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')

class TestStudent < Minitest::Test

  def setup
    @student = Student.new("David", "G8")
  end

  def test_name
    result = @student.name
    assert_equal("David", result)
  end

  def test_cohort
    result = @student.cohort
    assert_equal("G8", result)
  end

  def test_update_student_name
    @student.update_student_name("Bob")
    assert_equal("Bob", @student.name)
  end

  def test_update_cohort
    @student.update_cohort("G9")
    assert_equal("G9", @student.cohort)
  end

  def test_talking_student
    @student.talking_student
    assert_equal("I can talk" , @student.talking_student)
  end

  def test_fave_lang
    @student.fave_lang("Ruby")
    assert_equal("I love Ruby", @student.fave_lang("Ruby"))
  end
end
