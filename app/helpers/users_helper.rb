module UsersHelper
    def get_user_age()
        now = Time.now.utc.to_date
        birthdate = @user.birthdate

        # we remove 1 to the age if birthdate is not passed 
        # (if month is less than the birthdate one or if month is equal but day is not passed)
        now.year - birthdate.year - ((now.month > birthdate.month || (now.month == birthdate.month && now.day >= birthdate.day)) ? 0 : 1)
    end
end
