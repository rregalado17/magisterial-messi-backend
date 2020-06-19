class Player < ApplicationRecord
  belongs_to :team
  
  validate do 
    player_count_valid?
  end

  private 
  def player_count_valid?
    if self.team.players.count >= 5
      self.errors.add(:team_max, "You can only have 5 players on your team")
    end
  end
end
