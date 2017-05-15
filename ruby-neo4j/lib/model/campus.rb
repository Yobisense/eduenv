module Eduenv
  class Campus < AbstractEntity
    property :name

    has_many :in, :admissions, type: :GRANTED_FOR
    has_many :in, :institution, type: :OWNED_BY
  end
end