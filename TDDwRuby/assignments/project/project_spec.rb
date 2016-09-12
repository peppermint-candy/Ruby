#including project class here
require_relative "project"

#now start RSpec
#enacts the Rspec library and clals the describe method that takes in the class project, when doing so expect to do something

RSpec.describe Project do
  #now test our project class

  it 'has a getter and a setter for name attribute' do

    # set a proejct name and make it so we can set the name attribute
    project = Project.new("Project Name", "I am a project")
    project.name = "Changed Name"

    #now we should be able to run the code
    #run the expect method on our projects name and expect our project name to equal the value changed name

    expect(project.name).to eq("Changed Name")
  end

  # for elevator_pitch method

  it 'has a method elevator_pitch to explain name and description' do

    project1 = Project.new('Project1', 'description 1')
    project2 = Project.new('Project2', 'description 2')

    # if we call elevator pitch method we should get both name and desc back

    expect(project1.elevator_pitch).to eq("Project1, description 1")
    expect(project2.elevator_pitch).to eq("Project2, description 2")
  end

  it 'has a method add_to_team by increasing the team member' do
    project3 = Project.new('Proejct3', 'description 3')

    expect(project3.add_to_team).to eq(1)
  end
end
