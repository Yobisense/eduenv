require File.expand_path('../course_objective_criterion', __FILE__)
require File.expand_path('../course', __FILE__)

module Eduenv
  class CourseCriteriaSet < AbstractEntity
    has_many :out, :criteria, type: :WITH_CRITERION, model_class: :'::Eduenv::CourseObjectiveCriterion', unique:true
    has_one :in, :course, type: :HAS_CRITERIA_SET, model_class: :'::Eduenv::Course'
  end
end