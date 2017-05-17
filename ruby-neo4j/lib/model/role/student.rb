require File.expand_path('../../course_enrolment', __FILE__)

module Eduenv
  class Student < AbstractRole
    has_many :out, :enrolments, type: :HAS_ENROLMENT, model_class: :'::Eduenv::CourseEnrolment', unique: true
    has_many :in, :admissions, type: :GRANTED_TO, model_class: :'::Eduenv::Admission', unique: true
  end
end