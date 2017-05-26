class ForceCreateAbstractRoleIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::AbstractRole", :id, force: true
  end

  def down
    drop_constraint :"Eduenv::AbstractRole", :id
  end
end
