class Movie < ApplicationRecord
  validates :director_id, presence: true
  validates :title, presence: true, uniqueness: { scope: :year,  message: "Only one movie of that year is allowed" }
  validates :year, numericality: { only_integer: true, greater_than_or_equal_to: 1870, less_than_or_equal_to: 2050, message: "must be between 1870 and 2050"}
  validates :duration, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 2764800, message: "must make sense. C'mon now"}
end
