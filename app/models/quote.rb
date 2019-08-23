class Quote < ApplicationRecord #this means that allowed to sort of do all the standard model stuff.
	validates :saying, presence: true, length: { maximum: 140, minimum: 3}
	validates :author, presence: true, length: { maximum: 50, minimum: 3}
end
