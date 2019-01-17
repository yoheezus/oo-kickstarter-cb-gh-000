class Backer

    attr_accessor :name, :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        if !(@backed_projects.include?(project))
            @backed_projects << project
            add_backer_to_project(project)
        end
    end

    def add_backer_to_project(project)
        project.add_backer(self)
    end


end
