class ForceCreateCourseEnrolmentIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::CourseEnrolment", :id, force: true
  end

  def down
    drop_constraint :"Eduenv::CourseEnrolment", :id
  end
end
