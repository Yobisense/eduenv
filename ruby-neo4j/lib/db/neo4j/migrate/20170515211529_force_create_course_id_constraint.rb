class ForceCreateCourseIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::Course", :id, force: true
  end

  def down
    drop_constraint :"Eduenv::Course", :id
  end
end
