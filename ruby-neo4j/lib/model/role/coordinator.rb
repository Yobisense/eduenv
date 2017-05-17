require File.expand_path('../../course', __FILE__)

module Eduenv
  class Coordinator < AbstractRole
    has_one :in, :course, type: :COORDINATED_BY, model_class: :'::Eduenv::Course'
  end
end