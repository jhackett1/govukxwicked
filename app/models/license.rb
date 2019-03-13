class License < ApplicationRecord
    validates :number_of_balls, :duration, presence: true
end
