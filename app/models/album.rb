class Album < ActiveRecord::Base
	belongs_to :singer
	has_many :songs

	validates :title, presence: true
	validates :price, numericality: { greater_than_or_equal_to: 0 } 
	validates :production_label, presence: true
end
