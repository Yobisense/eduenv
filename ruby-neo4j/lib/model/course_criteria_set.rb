module Eduenv
  class CourseCriteriaSet < AbstractEntity
    has_many :out, :criteria, type: :WITH_CRITERION
    has_one :in, :course, type: :HAS_CRITERIA_SET
  end
end