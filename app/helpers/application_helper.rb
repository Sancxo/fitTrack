module ApplicationHelper
    def set_active_class(path)
        current_page?(path) ? "active" : ""
    end
end
