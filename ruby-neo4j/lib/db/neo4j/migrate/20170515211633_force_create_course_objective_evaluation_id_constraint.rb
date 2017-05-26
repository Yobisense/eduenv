class ForceCreateCourseObjectiveEvaluationIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::CourseObjectiveEvaluation", :id, force: true
  end

  def down
    drop_constraint :"Eduenv::CourseObjectiveEvaluation", :id
  end
end
