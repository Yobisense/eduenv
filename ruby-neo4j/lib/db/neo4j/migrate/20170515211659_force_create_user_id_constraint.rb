class ForceCreateUserIdConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :"Eduenv::User", :id, force: true
  end

  def down
    drop_constraint :"Eduenv::User", :id
  end
end
