class House < ActiveRecord::Base
  attr_accessible :name
  has_many :students

  def self.random_id
    pluck(:id).sample
  end
end
