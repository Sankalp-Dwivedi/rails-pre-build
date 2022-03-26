class Post < ApplicationRecord
	has_one_attached :thumbanil_image
	has_many_attached :images

	validates :thumbanil_image, presence: true
end
