class Person < ActiveRecord::Base
  attr_accessible :height, :weight, :gender
  validates :height, :presence => true
  validates :weight, :presence => true
  before_save :populate_gender

  private

  def populate_gender
  	count = DataPoint.sample(height,weight).inject(0) do |count, point|
  		count += point.gender == "M" ? 1 : -1
  	end

  	if count >= 0
			self.gender = "M"
		elsif count < 0
			self.gender = "F"
		end

  end

end
