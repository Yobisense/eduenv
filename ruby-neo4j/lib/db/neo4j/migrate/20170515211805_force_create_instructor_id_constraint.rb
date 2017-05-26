class ForceCreateInstructorIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::Instructor", :id, force: true
  end

  def down
    drop_constraint :"Eduenv::Instructor", :id
  end
end
