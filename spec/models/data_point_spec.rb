require 'spec_helper'

describe DataPoint do

	let(:create_points) do 
		20.times do 
			DataPoint.create(height: 100*rand, weight: 100*rand)
		end
	end

	let(:create_female_points) do 
		20.times do 
			DataPoint.create(height: 100*rand, weight: 100*rand, gender: "F")
		end
	end

	let(:create_male_points) do 
		20.times do 
			DataPoint.create(height: 100*rand, weight: 100*rand, gender: "M")
		end
	end

	describe "#sample" do
		it "should return DataPoints" do
			create_points
			DataPoint.sample((100*rand).floor, (100*rand).floor).each do |point|
				expect(point).to be_kind_of(DataPoint)
			end
		end
	

		it "should return female points" do
			create_female_points
			DataPoint.sample((100*rand).floor, (100*rand).floor).each do |point|
				expect(point.gender).to eq "F"
			end
		end


		it "should return male points" do
			create_male_points
			DataPoint.sample((100*rand).floor, (100*rand).floor).each do |point|
				expect(point.gender).to eq "M"
			end
		end
	end
end
