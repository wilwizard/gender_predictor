require "#{Rails.root}/plot_points"

Person.destroy_all
DataPoint.destroy_all

FEMALE.each do |point|
	DataPoint.create(height: point[0], weight: point[1], gender: "F")
end

MALE.each do |point|
	DataPoint.create(height: point[0], weight: point[1], gender: "M")
end