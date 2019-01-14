# * Create a class called Student that takes in a name (String) and a cohort (string - e.g "E18", "G6", etc) when an new instance is created.
# * Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# * Add in Setter methods to update the students name and what cohort they are in.
# * Create a method that gets the student to talk (eg. Returns "I can talk!).
# * Create a method that takes in a students favourite programming language and returns it as part of a string (eg. `student1.say_favourite_language("Ruby")` -> "I love Ruby").

class Student

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

  def get_name()
    return @student_name
  end

  def get_cohort()
    return @cohort
  end

  def set_name(new_name)
    @student_name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk()
    return "I can talk!"
  end

  def say_favourite_language(favourite_language)
    return "I love #{favourite_language}"
  end

end
