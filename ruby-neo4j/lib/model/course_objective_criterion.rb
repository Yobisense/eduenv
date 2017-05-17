require File.expand_path('../course_objective', __FILE__)
require File.expand_path('../course_criteria_set', __FILE__)

module Eduenv
  class CourseObjectiveCriterion < AbstractEntity
    property :description

    has_one :out, :objective, type: :FOR_OBJECTIVE, model_class: :'::Eduenv::CourseObjective'
    has_one :in, :criteria_set, type: :WITH_CRITERION, model_class: :'::Eduenv::CourseCriteriaSet'
  end
end