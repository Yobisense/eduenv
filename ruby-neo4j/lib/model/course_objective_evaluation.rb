require File.expand_path('../course_objective_criterion', __FILE__)
require File.expand_path('../course_enrolment', __FILE__)

module Eduenv
  class CourseObjectiveEvaluation < AbstractEntity
    property :value

    has_one :out, :criterion, type: :FOR_CRITERION, model_class: :'::Eduenv::CourseObjectiveCriterion'
    has_one :out, :enrolment, type: :EVALUATION_FOR, model_class: :'::Eduenv::CourseEnrolment'
  end
end