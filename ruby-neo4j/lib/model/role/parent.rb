module Eduenv
  class Parent < AbstractRole
    has_many :out, :children, type: :HAS_CHILD
  end
end