class ForceCreateTemporaryInstructorIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::TemporaryInstructor", :id, force: true
  end

  def down
    drop_constraint :"Eduenv::TemporaryInstructor", :id
  end
end
