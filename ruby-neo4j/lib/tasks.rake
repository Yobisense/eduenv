require 'active_support'

namespace :eduenv do
  desc "Initializes database constraints"


  task :migration_paths do
    ::Neo4j::Migrations::Runner.class_eval do
      def self.files
        spec = Gem::Specification.find_by_name 'eduenv'
        Dir["#{spec.gem_dir}/lib/db/neo4j/migrate/*.rb"].sort
      end
    end
  end

  task :initdb => [:migration_paths,:'neo4j:migrate'] do |task, args|
  end
end