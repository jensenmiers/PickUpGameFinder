class Player < ActiveRecord::Base
    has_many :signedup_players
    has_many :games, through: :signedup_players
end