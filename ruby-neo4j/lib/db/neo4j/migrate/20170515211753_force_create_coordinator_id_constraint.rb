class ForceCreateCoordinatorIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::Coordinator", :id, force: true
  end

  def down
    drop_constraint :"Eduenv::Coordinator", :id
  end
end
