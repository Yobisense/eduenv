module Eduenv
  class AbstractEntity
    include Neo4j::ActiveNode

    id_property :id

  end
end
