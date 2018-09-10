class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name()
    return @name
  end

  def cohort
    return @cohort
  end

  def update_student_name(new_name)
    return @name = new_name
  end

  def update_cohort(new_cohort)
    return @cohort = new_cohort
  end

  def talking_student
    return "I can talk"
  end

  def fave_lang(language)
    return "I love #{language}"
  end
end
