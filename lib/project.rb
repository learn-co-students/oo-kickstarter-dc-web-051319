
class Project

  attr_reader :title,:backers

  @@all = []

    def initialize(title)
      @title = title
      @backers = []
      @@all << self
    end

    def add_backer(backer)
      self.backers << backer
      backer.backed_projects << self
    end



end
