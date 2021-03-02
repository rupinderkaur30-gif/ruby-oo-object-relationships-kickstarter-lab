  require "pry"
  
  class Backer

    attr_accessor :name , :project_backer

def initialize(name)
    @name = name
   
end

def back_project(project)
 project_backer = ProjectBacker.new(project,self)
 #binding.pry

end

def backed_projects
    #binding.pry
    backed_projects = ProjectBacker.all.select {|pb| pb.backer == self}
    backed_projects.collect {|backed_projects|  backed_projects.project}
end
end