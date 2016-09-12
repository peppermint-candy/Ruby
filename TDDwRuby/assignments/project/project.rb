class Project
  attr_accessor :name, :description, :members

  def initialize name, description
    @name = name
    @description = description
    @members = 0
  end

  def elevator_pitch
    "#{@name}, #{@description}"
  end

  def add_to_team
    @members += 1
  end
end
