module Eduenv
  class AbstractRole < AbstractEntity
    property :start_date
    property :end_date

    has_one :in, :user, type: :HAS_ROLE
  end
end