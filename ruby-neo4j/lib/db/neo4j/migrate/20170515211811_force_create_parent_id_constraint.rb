class ForceCreateParentIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::Parent", :id, force: true
  end

  def down
    drop_constraint :"Eduenv::Parent", :id
  end
end
