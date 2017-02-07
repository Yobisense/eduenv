module Eduenv
  class User < AbstractEntity
    property :username
    property :password

    has_many :out, :roles, type: :HAS_ROLE
    has_one :out, :profile, type: :HAS_PROFILE

  end
end