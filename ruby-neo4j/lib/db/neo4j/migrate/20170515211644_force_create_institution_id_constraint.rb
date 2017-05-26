class ForceCreateInstitutionIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::Institution", :id, force: true
  end

  def down
    drop_constraint :"Eduenv::Institution", :id
  end
end
