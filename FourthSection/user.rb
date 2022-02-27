require_relative 'admin_user'

class User
    include AdminUser       # include --> AdminUser's method can be used here by User's instances
    # initialize method not defined --> Use the default one which exists in each class
    def user_method
        'user_method'
    end
end