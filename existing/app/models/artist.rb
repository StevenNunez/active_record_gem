class Artist < ActiveRecord::Base
  validates :name, presence:  true
  has_many :albums
  has_many :tracks, through: :albums
  has_many :genres, through: :tracks
end
