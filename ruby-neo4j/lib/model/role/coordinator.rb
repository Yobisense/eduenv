module Eduenv
  class Coordinator < AbstractRole
    has_one :in, :course, type: :COORDINATED_BY
  end
end