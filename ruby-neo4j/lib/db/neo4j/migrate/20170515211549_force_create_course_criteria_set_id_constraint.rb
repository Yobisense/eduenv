class ForceCreateCourseCriteriaSetIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::CourseCriteriaSet", :id, force: true
  end

  def down
    drop_constraint :"Eduenv::CourseCriteriaSet", :id
  end
end
