require File.expand_path('../campus', __FILE__)

module Eduenv
  class Institution < AbstractEntity
    property :name

    has_many :out, :campi, type: :OWNED_BY, model_class: :'::Eduenv::Campus', unique: true
  end
end