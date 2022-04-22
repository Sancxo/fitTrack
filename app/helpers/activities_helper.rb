module ActivitiesHelper
    def getUsername(user_id)
        user = User.find(user_id)
        user.first_name + " " + user.last_name
    end

    def getUserFirstName(user_id)
        User.find(user_id).first_name
    end

    def activity_img(activity_name)
        case activity_name
        when "Running"
            'running'
        when "Cycling"
            'cycling'
        when "Swimming"
            'swimming'
        when "Walking"
            'hiking'
        when "Skiing"
            'skiing'
        when "Weightlifting"
            'lifting'
        when "Yoga"
            'yoga'
        when "Rowing"
            'rowing'
        when "Skateboarding"
            'skateboarding'
        when "Climbing"
            'climbing'
        when 'Tennis'
            'tennis'
        when 'Soccer'
            'soccer'
        when 'Basket'
            'basket'
        else
            nil
        end 
    end
end
