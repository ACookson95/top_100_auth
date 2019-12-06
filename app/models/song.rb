class Song < ApplicationRecord
  validates :name, presence: true
  validates :genre, presence: true
  validates :minutes, presence: true
  validates :seconds, presence: true
  belongs_to :artist
end
