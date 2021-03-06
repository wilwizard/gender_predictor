require 'spec_helper'

describe Person do

	let(:person) { Person.create(height: (100*rand).floor, weight: (100*rand).floor) }

	it { should validate_presence_of :height }
	it { should validate_presence_of :weight }

	it "should populate gender" do
		20.times do 
			DataPoint.create(height: 100*rand, weight: 100*rand)
		end
		expect(person.gender).to_not be nil
	end

end