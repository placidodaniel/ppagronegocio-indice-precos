require 'rails_helper'

RSpec.describe Category, type: :model do
  
	it "is valid when description is defined" do 
		category = Category.new(description:"test")
		expect(category).to be_valid
	end

	it "is invalid when description is not defined" do 
		category = Category.new()
		expect(category).to be_invalid
	end

	it "is invalid when already have a Category with this description defined" do 
		Category.create(description:"test")
		category = Category.new(description:"test")
		expect(category).to be_invalid
	end

end