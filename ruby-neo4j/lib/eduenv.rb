require 'neo4j'


require File.expand_path('../model/abstract_entity.rb', __FILE__)
require File.expand_path('../model/role/abstract_role', __FILE__)

#entities
require File.expand_path('../model/admission.rb', __FILE__)
require File.expand_path('../model/campus.rb', __FILE__)
require File.expand_path('../model/course', __FILE__)
require File.expand_path('../model/course_criteria_set', __FILE__)
require File.expand_path('../model/course_enrolment', __FILE__)
require File.expand_path('../model/course_instance', __FILE__)
require File.expand_path('../model/course_objective', __FILE__)
require File.expand_path('../model/course_objective_criterion', __FILE__)
require File.expand_path('../model/course_objective_evaluation', __FILE__)
require File.expand_path('../model/institution', __FILE__)
require File.expand_path('../model/profile', __FILE__)
require File.expand_path('../model/user', __FILE__)

#roles
require File.expand_path('../model/role/administrator', __FILE__)
require File.expand_path('../model/role/coordinator', __FILE__)
require File.expand_path('../model/role/instructor', __FILE__)
require File.expand_path('../model/role/parent', __FILE__)
require File.expand_path('../model/role/student', __FILE__)
require File.expand_path('../model/role/temporary_instructor', __FILE__)