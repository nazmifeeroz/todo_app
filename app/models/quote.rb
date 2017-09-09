class Quote < ApplicationRecord
	
	validates :quot, presence: true
	validates :author, presence: true
	
end