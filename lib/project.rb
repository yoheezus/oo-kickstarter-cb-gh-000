class Project

    attr_accessor :backers, :title

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        if !(@backers.include?(backer))
            @backers << backer
            add_project_to_backer(backer)
        end
    end

    def add_project_to_backer(backer)
        backer.back_project(self)
    end


end
