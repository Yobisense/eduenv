require File.expand_path('../course', __FILE__)
require File.expand_path('../campus', __FILE__)
require File.expand_path('../role/instructor', __FILE__)
require File.expand_path('../course_enrolment', __FILE__)

module Eduenv
  class CourseInstance < AbstractEntity
    property :start_date
    property :end_date

    has_one :out, :course, type: :INSTANCE_OF, model_class: :'::Eduenv::Course'
    has_one :out, :campus, type: :BY_CAMPUS, model_class: :'::Eduenv::Campus'
    has_one :out, :instructor, type: :INSTRUCTED_BY, model_class: :'::Eduenv::Instructor'
    has_many :in, :enrolments, type: :ENROLLED_IN, model_class: :'::Eduenv::CourseEnrolment', unique:true
  end
end