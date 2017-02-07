module Eduenv
  class Student < AbstractRole
    property :start_date
    property :end_date
    property :terminated_date
    property :terminated_reason
    property :succeeded

    has_one :out, :course_instance, type: :ENROLLED_IN

  end
end