class Project
    attr_reader :title
    attr_accessor :backers

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer_obj)
        self.backers << backer_obj
        backer_obj.backed_projects << self
    end

end

# We decided that if we are going to put an instance of a Class 
# (in this case, backer_obj) as an argument for an instance method,
#  we are going to label it as "something_obj" to indicate that it is 
#  an object of the class that we're passing in. This way, it's easier 
#  to keep track of what is being passed in, and is more clear that 
#  this will result in an infinite-loop type set up.