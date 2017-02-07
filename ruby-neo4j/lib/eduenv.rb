require 'neo4j'

#entities
require File.expand_path('../model/abstract_entity.rb', __FILE__)
require File.expand_path('../model/course', __FILE__)
require File.expand_path('../model/course_instance', __FILE__)
require File.expand_path('../model/course_objective', __FILE__)
require File.expand_path('../model/course_objective_instance', __FILE__)
require File.expand_path('../model/profile', __FILE__)
require File.expand_path('../model/user', __FILE__)

#roles
require File.expand_path('../model/role/abstract_role', __FILE__)
require File.expand_path('../model/role/administrator', __FILE__)
require File.expand_path('../model/role/coordinator', __FILE__)
require File.expand_path('../model/role/instructor', __FILE__)
require File.expand_path('../model/role/parent', __FILE__)
require File.expand_path('../model/role/student', __FILE__)
require File.expand_path('../model/role/temporary_instructor', __FILE__)