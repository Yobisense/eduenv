module Eduenv
  class Course < AbstractEntity
    property :name
    property :grade
    property :minimum_success_score

    has_many :out, :course_objectives, type: :HAS_OBJECTIVE
    has_many :out, :coordinators, type: :COORDINATED_BY
  end
end