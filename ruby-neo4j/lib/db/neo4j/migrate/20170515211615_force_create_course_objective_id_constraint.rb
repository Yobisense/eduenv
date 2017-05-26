class ForceCreateCourseObjectiveIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::CourseObjective", :id, force: true
  end

  def down
    drop_constraint :"Eduenv::CourseObjective", :id
  end
end
