module Eduenv
  class CourseObjectiveInstance < AbstractEntity
    property :score

    has_one :out, :student, type: :ASSIGNED_TO
    has_one :out, :course_objective, type: :INSTANCE_OF
  end
end