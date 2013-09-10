class DataPoint < ActiveRecord::Base
  attr_accessible :weight, :height, :gender
  
	scope :height_within, lambda { |height, range| where('height > ?', height-range).where('height < ?', height+range) }
	scope :weight_within, lambda { |weight, range| where('weight > ?', weight-range).where('weight < ?', weight+range) }

	def self.sample(height, weight)
		height_range = 4
		weight_range = 4

		begin
			height_range += 1
			weight_range += 1
			samples = self.height_within(height, height_range).weight_within(weight, weight_range)
		end while samples.empty?
		samples
	end
end
	