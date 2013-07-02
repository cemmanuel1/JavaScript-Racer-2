def check_players(race_id, *players)
  players.each do |player|
    extant_player = Player.find_by_name(player)
    if extant_player
      Run.create(player_id: extant_player.id, race_id: race_id)
    else
      new_player = Player.create(name: player)
      Run.create(player_id: new_player.id, race_id: race_id)
    end
  end
end
