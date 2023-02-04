class Author < ApplicationRecord
	has_many :books
	validates_presence_of :name, :message=>"Please enter the name of the Author."
end
