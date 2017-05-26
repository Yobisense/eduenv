class ForceCreateProfileIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::Profile", :id, force: true
  end

  def down
    drop_constraint :"Eduenv::Profile", :id
  end
end
