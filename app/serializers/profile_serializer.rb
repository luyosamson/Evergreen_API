class ProfileSerializer < ActiveModel::Serializer
  attributes :id,:user_id,:name,:email,:username
end
