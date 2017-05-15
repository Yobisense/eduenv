module Eduenv
  class Admission < AbstractEntity
    has_one :out, :student, type: :GRANTED_TO
    has_one :out, :campus, type: :GRANTED_FOR

  end
end