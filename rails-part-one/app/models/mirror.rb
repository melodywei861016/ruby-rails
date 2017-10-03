class Mirror < ApplicationRecord

	has_many :members
  	validates :codename, presence: true,
                length: { minimum: 5 }
end
