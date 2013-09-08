class Person < ActiveRecord::Base
  attr_accessible :height, :weight, :gender

  after_create :populate_gender

  private

  def populate_gender
  	gender = height > 67 ? "M" : "F"
  end

end
