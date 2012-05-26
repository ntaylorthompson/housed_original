class User < ActiveRecord::Base
  attr_accessible :email, :name, :type
end
