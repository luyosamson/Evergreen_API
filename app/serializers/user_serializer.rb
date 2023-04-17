class UserSerializer < ActiveModel::Serializer
    attributes :id,:name,:email,:username

    # has_many :flowers
    # has_many :plants

end
