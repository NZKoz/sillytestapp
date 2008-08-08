class Greeting < ActiveRecord::Base
  has_many :recipients
end
