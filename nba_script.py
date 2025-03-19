from nba_api.stats.endpoints import playercareerstats
career_stats = playercareerstats.PlayerCareerStats(player_id=2544)
print(career_stats.get_json())
