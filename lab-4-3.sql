-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

-- Selecting the fields we want;
SELECT teams.name, players.first_name, players.last_name, MAX(stats.home_runs)

-- Merging the tables altogether;
FROM players INNER JOIN stats ON players.id == stats.player_id 
             INNER JOIN teams ON stats.team_id == teams.id

-- Filtering to season, sorting, and limiting to most homers;
WHERE teams.year == 2019
ORDER BY MAX(stats.home_runs) DESC
LIMIT 1;

-- This is sweet, I'm getting the hang of this <3