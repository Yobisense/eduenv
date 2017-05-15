module Eduenv
  class Course < AbstractEntity
    property :name
    property :level

    has_many :out, :objectives, type: :HAS_OBJECTIVE
    has_many :in, :instances, type: :INSTANCE_OF
    has_many :out, :coordinators, type: :COORDINATED_BY
    has_many :out, :criteria_sets, type: :HAS_CRITERIA_SET
  end
end