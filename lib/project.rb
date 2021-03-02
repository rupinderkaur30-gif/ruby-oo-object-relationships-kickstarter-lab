class Project

    attr_reader :title , :project_backer

    @@all = []

    def initialize(title)
     @title = title
    end

    def add_backer(backer)
        project_backer = ProjectBacker.new(self,backer)
    
    end
        
        def backers
            backed_projects = ProjectBacker.all.select {|pb| pb.project == self}
            backed_projects.collect {|backed_projects|  backed_projects.backer}
        end
end
