class Project
  attr_accessor :project_name, :project_description
  def initialize(name, desc)
    @project_name = name
    @project_description = desc
  end


  def name
    puts "This is project #{@project_name}"
  end

  def elevator_pitch
    puts "Let me tell you about my #{@project_name}. It's #{@project_description}"
  end
end
project1 = Project.new("Project 1", "Description 1")
puts project1.name #prints out Project 1
project1.elevator_pitch #prints out 'Project 1, Description 1"
