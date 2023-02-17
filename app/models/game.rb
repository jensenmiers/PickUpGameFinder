class Game < ActiveRecord::Base
    has_many :signedup_players
    has_many :players, through: :signedup_players
    belongs_to :gym
end