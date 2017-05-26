class ForceCreateCampusIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::Campus", :id, force: true
  end

  def down
    drop_constraint :"Eduenv::Campus", :id
  end
end
