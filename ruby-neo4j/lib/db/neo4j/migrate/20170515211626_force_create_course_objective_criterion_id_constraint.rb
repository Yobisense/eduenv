class ForceCreateCourseObjectiveCriterionIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::CourseObjectiveCriterion", :id, force: true
  end

  def down
    drop_constraint :"Eduenv::CourseObjectiveCriterion", :id
  end
end
