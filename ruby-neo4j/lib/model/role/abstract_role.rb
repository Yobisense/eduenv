require File.expand_path('../../user', __FILE__)

module Eduenv
  class AbstractRole < AbstractEntity
    property :start_date
    property :end_date

    has_one :in, :user, type: :HAS_ROLE, model_class: :'::Eduenv::User'
  end
end