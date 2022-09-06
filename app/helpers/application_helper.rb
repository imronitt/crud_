module ApplicationHelper
    def display_title(page_title=" ")

        if page_title.empty?

            'no title'

        else

            page_title + "- MyWebsite"

        end

    end
end
