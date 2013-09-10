class Person < ActiveRecord::Base
  attr_accessible :height, :weight, :gender
  validates :height, :presence => true
  validates :weight, :presence => true
  before_save :populate_gender

  private

  def populate_gender
  	self.gender = height > 67 ? "M" : "F"
  end

end
