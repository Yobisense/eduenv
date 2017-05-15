module Eduenv
  class CourseInstance < AbstractEntity
    property :start_date
    property :end_date

    has_one :out, :course, type: :INSTANCE_OF
    has_one :out, :campus, type: :BY_CAMPUS
    has_one :out, :instructor, type: :INSTRUCTED_BY
    has_many :in, :enrolments, type: :ENROLLED_IN
  end
end