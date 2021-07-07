class Backer
    attr_reader :name
    attr_accessor :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project_obj)
        self.backed_projects << project_obj
        project_obj.backers << self
    end

end

# We decided that if we are going to put an instance of a Class 
# (in this case, project_obj) as an argument for an instance method, 
# we are going to label it as "something_obj" to indicate that it is 
# an object of the class that we're passing in. This way, it's 
# easier to keep track of what is being passed in, and is more clear 
# that this will result in an infinite-loop type set up.