class User < ApplicationRecord
    has_secure_password

    validates :password, presence: true, length:{minimum: 8}
    validates :name, presence: true
    # VALID_EMAIL_REGEX= /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i



    validates :email, presence: true

    # format:{with:VALID_EMAIL_REGEX}
end
