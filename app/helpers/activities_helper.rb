module ActivitiesHelper
    def getUsername(user_id)
        user = User.find(user_id)
        user.first_name + " " + user.last_name
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
        when "Weight-lifting"
            'lifting'
        when "Yoga"
            'yoga'
        when "Rowing"
            'rowing'
        when "Skating"
            'skating'
        when "Climbing"
            'climbing'
        when 'Tennis'
            'tennis'
        else
            nil
        end 
    end
end
