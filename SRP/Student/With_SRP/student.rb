class Student
  def initialize
    @terms = [ Grade.new(:first), Grade.new(:second) ]
  end

  def first_term_grade
    term(:first).grade
  end

  def second_term_grade
    term(:second).grade
  end

  private

  def term reference
    @terms.find {|term| term.name == reference}
  end
end

class Grade
  attr_reader :name, :home_work, :test, :paper

  def initialize(name)
    @name      = name
    @home_work = 0
    @test      = 0
    @paper     = 0
  end

  def grade
    (home_work + test + paper) / 3
  end
end
