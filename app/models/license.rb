class License < ApplicationRecord
    validates :duration, presence: true
end
