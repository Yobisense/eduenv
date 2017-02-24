module Eduenv
  class Parent < AbstractRole
    has_one :out, :child, type: :HAS_CHILD
  end
end