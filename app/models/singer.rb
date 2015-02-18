class Singer < ActiveRecord::Base
	has_many :albums
	validates :name, presence: true
	validates :twitter, uniqueness: { allow_blank: true }

	def self.gender_get
		["Masculino", "Femenino"]
	end

end
