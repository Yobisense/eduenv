module Eduenv
  class CourseObjectiveCriterion < AbstractEntity
    property :description

    has_one :out, :objective, type: :FOR_OBJECTIVE
    has_one :in, :criteria_set, type: :WITH_CRITERION
  end
end