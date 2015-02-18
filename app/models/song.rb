class Song < ActiveRecord::Base
	belongs_to :album

	validates :title, presence: true
	validates :duration, numericality: { greater_than_or_equal_to: 0 }
end
