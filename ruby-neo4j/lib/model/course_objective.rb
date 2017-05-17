require File.expand_path('../course', __FILE__)

module Eduenv
  class CourseObjective < AbstractEntity
    property :description
    property :name

    has_one :in, :course, type: :HAS_OBJECTIVE, model_class: :'::Eduenv::Course'

  end
end