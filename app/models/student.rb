class Student < ActiveRecord::Base
  belongs_to :house
  attr_accessible :name, :house_id
end
