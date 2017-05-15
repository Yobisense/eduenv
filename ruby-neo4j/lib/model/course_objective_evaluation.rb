module Eduenv
  class CourseObjectiveEvaluation < AbstractEntity
    property :value

    has_one :out, :criterion, type: :FOR_CRITERION
    has_one :out, :enrolment, type: :EVALUATION_FOR
  end
end