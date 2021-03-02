class Project

    attr_reader :title 

    @@all = []

    def initialize(title)
     @title = title
    end

    def add_backer(backer)
        project_backer = ProjectBacker.new(self,backer)
    
    end

end
