require "sinatra"
APP_ROOT = File.dirname(__FILE__)


require_relative "app/controllers/application_controller.rb"
require_relative "app/controllers/students_controller.rb"
require_relative "app/models/base.rb"
require_relative "app/models/students.rb"
require_relative "app/controllers/teachers_controller.rb"
require_relative "app/models/teachers.rb"


map("/students"){run StudentsController}

map("/teachers"){run TeachersControlles}


