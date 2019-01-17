class Project

    attr_accessor :backers, :title

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        if !(@backers.include?(backer))
            @backers << backers
            backer.back_project(self)
        end
    end

end
