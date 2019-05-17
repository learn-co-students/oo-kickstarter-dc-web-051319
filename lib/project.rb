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
