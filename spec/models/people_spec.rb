require 'spec_helper'

describe Person do

		let(:person) { Person.create(height: (100*rand).floor, weight: (100*rand).floor) }

		it { should validate_presence_of :height }
		it { should validate_presence_of :weight }

			it "should populate gender" do
				# expect(person.gender).to_not be nil
				pending
			end

end