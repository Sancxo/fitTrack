# Dynamically adds & removes "active" class to the link in the navbar
module ApplicationHelper
    def set_active_class(path)
        current_page?(path) ? "active" : ""
    end
end
