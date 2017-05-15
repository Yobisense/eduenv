module Eduenv
  class Institution < AbstractEntity
    property :name

    has_many :out, :campi, type: :OWNED_BY
  end
end