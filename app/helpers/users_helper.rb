module UsersHelper



    def my_gravatar(user)

        

        g_id = Digest::MD5::hexdigest(user.email.downcase)

        g_url="http://secure.gravatar.com/avatar/#{g_id}"

        image_tag(g_url,alt:user.name,class:"gravatar")

    end



end