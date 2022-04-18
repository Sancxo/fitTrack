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

        when "Walking"
            'hiking'
        when "Skiing"

        when "Weight-lifting"
            'lifting'
        when "Yoga"

        when "Rowing"

        when "Skating"

        when "Climbing"

        else
            nil
        end 
    end
end
