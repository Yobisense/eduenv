class ForceCreateAdmissionIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::Admission", :id, force: true
  end

  def down
    drop_constraint :"Eduenv::Admission", :id
  end
end
