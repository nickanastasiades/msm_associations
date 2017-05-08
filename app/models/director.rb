class Director < ApplicationRecord
  validates :name, presence: true, uniqueness: { scope: :dob,
    message: "One director of that dob allowed" }
end
