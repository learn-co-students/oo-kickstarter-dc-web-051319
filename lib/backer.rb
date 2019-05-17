class Backer

  attr_reader :name, :backed_projects

  def initialize(name, backed_projects=[])
    @name = name
    @backed_projects = backed_projects
  end

  def back_project(project)
    unless self.backed_projects.include?(project)
      self.backed_projects << project
      project.add_backer(self)
    end
  end


end
