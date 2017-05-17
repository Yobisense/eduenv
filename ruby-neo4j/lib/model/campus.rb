require File.expand_path('../admission', __FILE__)
require File.expand_path('../institution', __FILE__)
module Eduenv
  class Campus < AbstractEntity
    property :name

    has_many :in, :admissions, type: :GRANTED_FOR, model_class: :'::Eduenv::Admission', unique: true
    has_many :in, :institution, type: :OWNED_BY, model_class: :'::Eduenv::Institution', unique: true
  end
end