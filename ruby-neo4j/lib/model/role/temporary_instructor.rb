module Eduenv
  class TemporaryInstructor < AbstractRole
    has_many :in, :course_objective_instance, type: :INSTRUCTED_BY
  end
end