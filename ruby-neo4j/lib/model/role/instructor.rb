module Eduenv
  class Instructor < AbstractRole
    has_one :in, :course_instance, type: :INSTRUCTED_BY
  end
end