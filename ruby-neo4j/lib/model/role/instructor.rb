require File.expand_path('../../course_instance', __FILE__)

module Eduenv
  class Instructor < AbstractRole
    has_one :in, :course_instance, type: :INSTRUCTED_BY, model_class: :'::Eduenv::CourseInstance'
  end
end