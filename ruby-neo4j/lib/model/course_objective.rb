module Eduenv
  class CourseObjective < AbstractEntity
    property :description
    property :maximum_score
    property :name
    property :success_required

    has_one :in, :course, type: :HAS_OBJECTIVE

  end
end