require File.expand_path('../../course_objective_evaluation', __FILE__)

module Eduenv
  class TemporaryInstructor < AbstractRole
    has_many :in, :course_objective_instance, type: :INSTRUCTED_BY, model_class: :'::Eduenv::CourseObjectiveEvaluation', unique: true
  end
end