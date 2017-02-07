module Eduenv
  class AbstractRole < AbstractEntity
    has_one :in, :user, type: :HAS_ROLE
  end
end