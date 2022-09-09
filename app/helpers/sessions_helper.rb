module SessionsHelper



    def log_in(user)

       

        session[:user_id]=user.id

    

    end



    def current_user

        

        if session[:user_id]

            

                

            @current_user ||= User.find_by(id:session[:user_id])

        end

    

    end

    def save_user_location
        session[:user_url] = request.original_url 
    end

    def move_user_to_url
        redirect_to(session[:user_url])
        session.delete(:user_url)

    end



    def logged_in?

        

        

        !current_user.nil?

        

    

    end



    def log_out

        

        session.delete(:user_id)

        @current_user=nil



    end

end