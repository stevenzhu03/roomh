class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :name, :age, :summary, :work_info, :sex, :budget, :move_in_date, :cleaning, :guests, :schedule, :pets

  
end
