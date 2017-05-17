require File.expand_path('../role/student', __FILE__)
require File.expand_path('../course_instance', __FILE__)

module Eduenv
  class CourseEnrolment < AbstractEntity
    property :start_date
    property :end_date
    property :termination_reason
    property :succeeded
    has_one :out, :course_instance, type: :ENROLLED_IN, model_class: :'::Eduenv::CourseInstance'
    has_one :in, :student, type: :HAS_ENROLMENT, model_class: :'::Eduenv::Student'
  end
end