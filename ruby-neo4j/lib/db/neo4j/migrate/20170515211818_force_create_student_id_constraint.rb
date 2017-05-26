class ForceCreateStudentIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::Student", :id, force: true
  end

  def down
    drop_constraint :"Eduenv::Student", :id
  end
end
