class ForceCreateAbstractEntityIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::AbstractEntity", :id, force: true
    add_constraint :"Eduenv::AbstractEntity", :uuid, force: true
  end

  def down
    drop_constraint :"Eduenv::AbstractEntity", :id
    drop_constraint :"Eduenv::AbstractEntity", :uuid
  end
end
