require File.expand_path('../../user', __FILE__)

module Eduenv
  class Parent < AbstractRole
    has_one :out, :child, type: :HAS_CHILD, model_class: :'::Eduenv::User'
  end
end