require File.expand_path('../role/abstract_role', __FILE__)
require File.expand_path('../profile', __FILE__)

module Eduenv
  class User < Eduenv::AbstractEntity
    has_many :out, :roles, type: :HAS_ROLE, model_class: :'::Eduenv::AbstractRole', unique: true
    has_one :out, :profile, type: :HAS_PROFILE, model_class: :'::Eduenv::Profile'

  end
end