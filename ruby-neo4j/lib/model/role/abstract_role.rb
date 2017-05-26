require File.expand_path('../../user', __FILE__)

module Eduenv
  class AbstractRole < AbstractEntity
    property :start_date
    property :end_date
    property :role_type

    has_one :in, :user, type: :HAS_ROLE, model_class: :'::Eduenv::User'

    def initialize *args
      super(*args)
      self.role_type= self.class.name
    end
  end
end