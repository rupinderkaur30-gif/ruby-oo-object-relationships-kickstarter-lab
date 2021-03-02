  require "pry"
  
  class Backer

    attr_accessor :name ,:backed_projects

def initialize(name)
    @name = name
    @backed_projects = []
end

def back_project(project)
 project_backer = ProjectBacker.new(project,self)
 #binding.pry

end

def backed_projects
 ProjectBacker.all.map {|backer| binding.pry ProjectBacker.backer == self}
end
end