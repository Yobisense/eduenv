require File.expand_path('../role/student', __FILE__)
require File.expand_path('../campus', __FILE__)

module Eduenv
  class Admission < AbstractEntity
    has_one :out, :student, type: :GRANTED_TO, model_class: :'::Eduenv::Student', unique: true
    has_one :out, :campus, type: :GRANTED_FOR, model_class: :'::Eduenv::Campus', unique: true

  end
end