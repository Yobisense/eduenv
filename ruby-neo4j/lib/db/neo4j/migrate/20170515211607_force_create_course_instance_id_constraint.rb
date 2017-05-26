class ForceCreateCourseInstanceIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::CourseInstance", :id, force: true
  end

  def down
    drop_constraint :"Eduenv::CourseInstance", :id
  end
end
