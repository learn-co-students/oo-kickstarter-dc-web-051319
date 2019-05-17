class Backer
    attr_reader :name
    attr_accessor :backed_projects

    def initialize(name)
        @backed_projects = []
        @name = name
    end

    def back_project(project)
        self.backed_projects << project 
        project.backers << self
    end
end