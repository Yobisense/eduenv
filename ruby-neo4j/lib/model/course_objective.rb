module Eduenv
  class CourseObjective < AbstractEntity
    property :description
    property :name

    has_one :in, :course, type: :HAS_OBJECTIVE

  end
end