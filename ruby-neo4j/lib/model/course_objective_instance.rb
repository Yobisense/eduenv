module Eduenv
  class CourseObjectiveInstance < AbstractEntity

    has_one :out, :student, type: :ASSIGNED_TO
    has_one :out, :course_objective, type: :INSTANCE_OF
    has_
  end
end