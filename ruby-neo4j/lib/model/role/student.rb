module Eduenv
  class Student < AbstractRole

    has_one :in, :user, type: :HAS_ROLE
    has_many :out, :enrolments, type: :HAS_ENROLMENT

  end
end