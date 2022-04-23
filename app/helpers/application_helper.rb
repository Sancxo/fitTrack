# Dynamically adds & removes "active" class to the link in the navbar
module ApplicationHelper
    def set_active_class(path)
        if path.is_a? Array
            if path.any? {|p| current_page?(p)}
                "active"
            else
                "" 
            end
        else
            current_page?(path) ? "active" : ""            
        end
    end
end
