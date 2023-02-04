class Book < ApplicationRecord
	belongs_to :author
	validates_presence_of :title, :message=>"Please enter the name of the Book."
end
