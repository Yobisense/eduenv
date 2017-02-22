module Eduenv
  class CourseEnrolment < AbstractEntity
    property :start_date
    property :end_date
    property :termination_reason
    property :succeeded
    has_one :out, :course_instance, type: :ENROLLED_IN
    has_one :in, :student, type: :HAS_ENROLMENT
  end
end