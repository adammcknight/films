class Movie < ActiveRecord::Base
	belongs_to :genre, dependent: :destroy
	
	validates :title, :released_on, presence: true
	
	#validates_inclusion_of :rating, in:("PG", "12", "18")
end
