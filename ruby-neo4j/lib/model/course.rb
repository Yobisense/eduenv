require File.expand_path('../course_objective', __FILE__)
require File.expand_path('../course_instance', __FILE__)
require File.expand_path('../role/coordinator', __FILE__)
require File.expand_path('../course_criteria_set', __FILE__)

module Eduenv
  class Course < AbstractEntity
    property :name
    property :level

    has_many :out, :objectives, type: :HAS_OBJECTIVE, model_class: :'::Eduenv::CourseObjective', unique:true
    has_many :in, :instances, type: :INSTANCE_OF, model_class: :'::Eduenv::CourseInstance', unique:true
    has_many :out, :coordinators, type: :COORDINATED_BY, model_class: :'::Eduenv::Coordinator', unique:true
    has_many :out, :criteria_sets, type: :HAS_CRITERIA_SET, model_class: :'::Eduenv::CourseCriteriaSet', unique:true
  end
end